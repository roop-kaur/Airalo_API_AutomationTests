#!/bin/bash
# Run Postman collection with Newman
newman run Postman/Airalo.postman_collection.json \
    -e Postman/Airalo.postman_environment.json \
    --reporters cli,json \
    --reporter-json-export Postman/newman-report.json
