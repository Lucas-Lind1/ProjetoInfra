from aws_cdk import (
    core,
    aws_lambda as _lambda,
    aws_iam as iam,
)

class LambdaStack(core.Stack):

    def __init__(self, scope: core.Construct, id: str, **kwargs) -> None:
        super().__init__(scope, id, **kwargs)

        # Define a Lambda function
        self.lambda_function = _lambda.Function(
            self, "MyLambdaFunction",
            runtime=_lambda.Runtime.PYTHON_3_8,
            handler="handler.main",
            code=_lambda.Code.from_asset("cdk/lambda"),
            environment={
                "EXAMPLE_ENV_VAR": "value"
            }
        )

        # Define permissions for the Lambda function
        self.lambda_function.add_to_role_policy(
            iam.PolicyStatement(
                actions=["dynamodb:PutItem", "dynamodb:GetItem"],
                resources=["*"],  # Replace with specific resource ARNs
            )
        )