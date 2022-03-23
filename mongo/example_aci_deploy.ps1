# Example of how to deploy MongoDB to Azure Container Instances
# Example includes deployment with Persistence to Azure Files
az container create `
    --resource-group YOUR_RG `
    --location eastus `
    --name YOUR_ACI_NAME `
    --image YOUR_ACR_NAME.azurecr.io/YOUR_PUSHED_IMAGE `
    --dns-name-label YOUR_DNS_NAME `
    --os-type Linux `
    --ports 27017 `
    --azure-file-volume-account-name YOUR_STORAGE_NAME `
    --azure-file-volume-account-key YOUR_STORAGE_KEY `
    --azure-file-volume-share-name YOUR_FILE_PATH `
    --azure-file-volume-mount-path /data `
    --registry-login-server YOUR_ACR_NAME.azurecr.io `
    --registry-password YOUR_ACR_PASSWORD `
    --registry-username YOUR_ACR_USERNAME
