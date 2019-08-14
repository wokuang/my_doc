# List shared authorizer on serverless framework

## 設定範例
  * authorizer-stack serverless.yml
```
service: authorizer-stack

functions:
 authorizer:
   handler: authorizer.handler

 hello:
   handler: hello.handler
   events:
     - http:
         path: hello
         method: get
         authorizer:
           type: CUSTOM
           authorizerId:
             Ref: Authorizer

resources:
 Resources:
   AuthorizerPermission:
     Type: AWS::Lambda::Permission
     Properties:
         FunctionName:
             Fn::GetAtt: AuthorizerLambdaFunction.Arn
         Action: lambda:InvokeFunction
         Principal:
           Fn::Join: ["",["apigateway.", { Ref: "AWS::URLSuffix"}]]
   Authorizer:
     DependsOn:
       - ApiGatewayRestApi
     Type: AWS::ApiGateway::Authorizer
     Properties: 
       Name: ${self:provider.stage}-Authorizer
       RestApiId: { "Ref" : "ApiGatewayRestApi" }
       Type: TOKEN
       IdentitySource: method.request.header.Authorization
       AuthorizerResultTtlInSeconds: 300
       AuthorizerUri:
         Fn::Join:
           - ''
           - 
             - 'arn:aws:apigateway:'
             - Ref: "AWS::Region"
             - ':lambda:path/2015-03-31/functions/'
             - Fn::GetAtt: "AuthorizerLambdaFunction.Arn"
             - "/invocations"

 Outputs:
   AuthorizerId:
     Value:
       Ref: Authorizer
     Export:
       Name: ${self:service}-${self:provider.stage}-authorizerId
   apiGatewayRestApiId:
     Value:
       Ref: ApiGatewayRestApi
     Export:
       Name: ${self:service}-${self:provider.stage}-restApiId
   apiGatewayRestApiRootResourceId:
     Value:
        Fn::GetAtt:
         - ApiGatewayRestApi
         - RootResourceId
     Export:
       Name: ${self:service}-${self:provider.stage}-rootResourceId
```

  * import serverless.yml
```
provider:
  # Next lines enable same api gateway usage but different cloudformation stacks
  apiGateway:
    restApiId:
      Fn::ImportValue: authorizer-stack-${self:provider.stage}-restApiId
    restApiRootResourceId:
      Fn::ImportValue: authorizer-stack-${self:provider.stage}-rootResourceId
functions:
  helloWorld:
    handler: hello.handler
    events:
      - http:
          path: hello-world
          method: get
          authorizer:
            type: CUSTOM
            authorizerId: !ImportValue authorizer-stack-${self:provider.stage}-authorizerId
```
 
## Reference
  * [Share authorizer with TOKEN type](https://forum.serverless.com/t/share-authorizer-with-token-type/8121)
