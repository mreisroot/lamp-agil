#!/bin/sh

sudo su <<- EOF
  apt update
  apt install -y ansible
EOF
