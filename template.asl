{
    "Comment": "A Hello World example demonstrating various state types of the Amazon States Language",
    "StartAt": "Pass",
    "States": {
        "Pass": {
            "Comment": "A Pass state passes its input to its output, without performing work. Pass states are useful when constructing and debugging state machines.",
            "Type": "Pass",
            "Next": "Invoke Lambda function"
        },
        "Invoke Lambda function": {
            "Type": "Task",
            "Resource": "arn:aws:states:::lambda:invoke",
            "Parameters": {
                "FunctionName": "arn:aws:lambda:eu-west-1:394070527653:function:JSONPathLambdaFunction",
                "Payload": {
                    "Input.$": "$"
                }
            },
            "ResultPath": "$.lambdaOutput",
            "End": true
        }
    }
}
