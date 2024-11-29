#!/bin/bash

source .env

cd dist
rsync --progress -r . $SSH_URL
