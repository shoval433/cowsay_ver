#!/bin/bash

docker build --tag imag_app . >/dev/null

docker run -d -p 4001:3001 --name app imag_app



