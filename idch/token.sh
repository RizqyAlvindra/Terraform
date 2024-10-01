#!/bin/bash
curl "https://api.idcloudhost.com/v1/user-resource/token" \
    -H "apikey: your_api_key" \
    -X POST \
    -d "description=Terraform" \
    -d "restricted=true" \
    -d "billing_account_id=1200157626"

