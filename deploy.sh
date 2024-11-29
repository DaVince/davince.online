#!/bin/bash

source .env

cd dist
rsync --progress -r -L . $SSH_URL
