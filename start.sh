#!/bin/bash

export LOCAL_TARGET_SERVER_PORT=25000
export LOCAL_WORKSPACE=./

export LOCAL_VERSION_BOOTSTRAP=1.70.0-master #module @nebulario/tunnel-server-boot-graph
export LOCAL_VERSION_GRAPH=1.70.1-fix-sshd-key-prod #module repoflow/tunnel-server-graph-container
export LOCAL_VERSION_WORKER=1.70.1-fix-sshd-key-prod #module repoflow/tunnel-server-worker-graph-container

echo "Starting..."
echo "{\"dependencies\":{\"@nebulario/tunnel-server-boot-graph\":\"${LOCAL_VERSION_BOOTSTRAP}\"}}" > package.json
npm install --production=true
node node_modules/@nebulario/tunnel-server-boot-graph/dist/index.js
