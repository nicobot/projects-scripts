#!/bin/bash

RED='\033[0;31m'
NC='\033[0m' # No Color

die () {
    echo -e >&2 "${RED}$@${NC}"
    exit 1
}

[ "$#" -eq 1 ] || die "Error: Project name argument required, $# provided"

NAME=$1

git clone git@github.com:nicobot/drupal-project-boilerplate.git ${NAME} && cd ${NAME}
