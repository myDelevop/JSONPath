{
    "Comment": "Array Handler state for manipulating more objects",
    "StartAt": "Pass",
    "States": {
        "Pass": {
            "Comment": "Example of input: {\"items\": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]}",
            "Type": "Pass",
            "Parameters": {
                "firstItem.$": "$.items[0]",
                "lastThreeItems.$": "$.items[-3:]"
            },
            "End": true
        }
    }
}
