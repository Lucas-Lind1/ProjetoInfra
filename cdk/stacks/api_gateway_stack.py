from aws_cdk import (
    core,
    aws_apigateway as apigateway,
    aws_lambda as _lambda,
)

class ApiGatewayStack(core.Stack):

    def __init__(self, scope: core.Construct, id: str, lambda_function: _lambda.IFunction, **kwargs) -> None:
        super().__init__(scope, id, **kwargs)

        api = apigateway.RestApi(self, "MyApi",
            rest_api_name="My Service",
            description="This service serves my API."
        )

        get_integration = apigateway.LambdaIntegration(lambda_function)

        api.root.add_method("GET", get_integration)  # GET /
        api.root.add_resource("resource").add_method("POST", get_integration)  # POST /resource