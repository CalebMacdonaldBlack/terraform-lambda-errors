# Terraform Lambda Function Module
This module is used to attach hourly error and throttle alarms to a lambda function
## Variables
- `function_name` - The lambda function name
- `alarm_sns_arn` - ARN of the alarm sns
## Usage
```hcl
module "alarms" {
  source = "github.com/CalebMacdonaldBlack/terraform-lambda-errors"
  env = "${var.env}"
  function_name = "${aws_lambda_function.lambda.function_name}"
}
```
## Outputs
- None
