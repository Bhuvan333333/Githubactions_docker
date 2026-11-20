from calculator import add, sub, mul
import json


def lambda_handler(event, context):

    params = event.get("queryStringParameters") or {}

    a = int(params.get("a", 0))
    b = int(params.get("b", 0))
    op = params.get("op", "add")

    if op == "add":
        result = add(a, b)

    elif op == "sub":
        result = sub(a, b)

    elif op == "mul":
        result = mul(a, b)

    else:
        return {
            "statusCode": 400,
            "body": json.dumps(
                {
                    "error": "Invalid operation"
                }
            )
        }

    return {
        "statusCode": 200,
        "body": json.dumps(
            {
                "a": a,
                "b": b,
                "operation": op,
                "result": result
            }
        )
    }