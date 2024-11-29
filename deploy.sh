#!/bin/bash

source .env

cd dist
rsync --progress -r -LK . $DAVINCE_REMOTE_DESTINATION
