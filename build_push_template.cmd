docker login -u YOUR_USER_NAME -p YOUR_PASSWORD YOUR_LOGIN_SERVER_NAME.azurecr.io
docker build -t YOUR_LOGIN_SERVER_NAME.azurecr.io/YOUR_IMAGE_NAME .
docker push YOUR_LOGIN_SERVER_NAME.azurecr.io/YOUR_IMAGE_NAME:latest