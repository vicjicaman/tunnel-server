#!/bin/bash

export LOCAL_TARGET_SERVER_PORT=25000
export LOCAL_WORKSPACE=./

export LOCAL_VERSION_BOOTSTRAP=1.70.12-initial-server-prod #module @nebulario/tunnel-server-boot-graph
export LOCAL_VERSION_GRAPH=1.70.15-initial-server-prod #module repoflow/tunnel-server-graph-container
export LOCAL_VERSION_WORKER=1.70.4-initial-server-prod #module repoflow/tunnel-server-worker-graph-container

echo "Starting..."
echo "{\"dependencies\":{\"@nebulario/tunnel-server-boot-graph\":\"${LOCAL_VERSION_BOOTSTRAP}\"}}" > package.json
npm install --production=true
node node_modules/@nebulario/tunnel-server-boot-graph/dist/index.js
