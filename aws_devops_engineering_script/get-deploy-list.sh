#!/bin/bash
# Grab the deplyment Id's
DEPLOYARRAY=$(aws deploy list-deployments --output text)

# Iterate over the output string and separate id's based on whitespace
IFS=' ' read -r -a DEPLOYID <<< $DEPLOYARRAY

# Test to see if we have the id's
echo "${DEPLOYID[1]}"
echo "${DEPLOYID[3]}"
echo "${DEPLOYID[5]}"

