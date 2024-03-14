#!/bin/bash

ENVIRONMENT="$1"

if [ "$ENVIRONMENT" = "dev" ]; then
  DEFAULT_DATABASE="pg-jp-n-app-181481"
  DEFAULT_LOCATION="asia-northeast1"
else
  DEFAULT_DATABASE="pg-jp-n-app-181481"
  DEFAULT_LOCATION="asia-northeast1"
fi

cat <<EOF > dataform.json
{
  "defaultSchema": "Mart_demo_data",
  "assertionSchema": "dataform_assertions",
  "warehouse": "bigquery",
  "defaultDatabase": "$DEFAULT_DATABASE",
  "defaultLocation": "$DEFAULT_LOCATION"
}
EOF