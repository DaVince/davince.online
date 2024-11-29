#!/bin/bash

source .env

cd dist
rsync --progress -r -LK . $SSH_URL
