curl -i http://localhost:4318/v1/traces \
-X POST \
-H "Content-Type: application/json" \
-d '{
  "resourceSpans": [
    {
      "resource": {
        "attributes": [
          {
            "key": "service.name",
            "value": {
              "stringValue": "test-with-curl"
            }
          }
        ]
      },
      "scopeSpans": [
        {
          "scope": {
            "name": "manual-test"
          },
          "spans": [
            {
              "traceId": "71699b6fe85982c7c8995ea3d9c35df8",
              "spanId": "3c191d03fa8be035",
              "name": "spanitron",
              "kind": 2,
              "startTimeUnixNano": "'$(date +%s)000000000'",
              "endTimeUnixNano": "'$(date +%s)900000000'",
              "droppedAttributesCount": 0,
              "events": [],
              "droppedEventsCount": 0,
              "status": {
                "code": 1
              }
            }
          ]
        }
      ]
    }
  ]
}'


curl -H "traceparent: 00-71699b6fe85982c7c8995ea3d9c35df8-3c191d03fa8be035-01" http://localhost:8081/chain