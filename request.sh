# Call the Cloud Function
curl -X POST localhost:8080 \
   -H "Content-Type: application/cloudevents+json" \
   -d '{
	"specversion" : "1.0",
	"type" : "example.com.cloud.event",
	"source" : "https://example.com/cloudevents/pull",
	"subject" : "123",
	"id" : "A234-1234-1234",
	"time" : "2018-04-05T17:31:00Z",
	"data" : "This is a cloud function"
}'

# Deploy the Cloud Function
gcloud functions deploy my-http-function \
  --region=us-central1 \
  --runtime=python39 \
  --source=. \
  --entry-point=hello_cloud_event \
  --trigger-http