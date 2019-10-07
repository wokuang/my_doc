# Get the role arn from describe-instances to pass to list-instance-profiles
apiROLEARN=$(aws ec2 describe-instances --filter "Name=tag:Name,Values=MadLib API*" --query 'Reservations[0].Instances[0].IamInstanceProfile.Arn' --output text)

# Get the role name from list-instance-profiles to pass to list-role-policies
apiROLENAME=$(aws iam list-instance-profiles --query "InstanceProfiles[?Arn=='$apiROLEARN'].Roles[0].RoleName" --output text)

# Get the PolicyNames to pass to iam get-role-policy
apiPOLNAME=$(aws iam list-role-policies --role-name $apiROLENAME --query PolicyNames[] --output text)

# show me the permissions!!
aws iam get-role-policy --role-name $apiROLENAME --policy-name $apiPOLNAME

