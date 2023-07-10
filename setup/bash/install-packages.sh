#!/bin/bash

set -euo pipefail

sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update
sudo apt install git -y
sudo apt install gh
