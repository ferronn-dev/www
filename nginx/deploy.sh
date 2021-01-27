IMAGE=gcr.io/www-ferronn-dev/nginx
docker build -t $IMAGE .
docker push $IMAGE
gcloud --project=www-ferronn-dev run deploy nginx \
    --platform=managed \
    --region=us-central1 \
    --image=$IMAGE
