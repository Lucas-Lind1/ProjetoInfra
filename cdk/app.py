from aws_cdk import core
from stacks.lambda_stack import LambdaStack
from stacks.api_gateway_stack import ApiGatewayStack
from stacks.dynamodb_stack import DynamoDBStack

class MyCdkApp(core.App):
    def __init__(self):
        super().__init__()

        # Define stacks for different services
        lambda_stack = LambdaStack(self, "LambdaStack")
        api_gateway_stack = ApiGatewayStack(self, "ApiGatewayStack", lambda_function=lambda_stack.lambda_function)
        dynamodb_stack = DynamoDBStack(self, "DynamoDBStack")

if __name__ == "__main__":
    app = MyCdkApp()
    app.synth()