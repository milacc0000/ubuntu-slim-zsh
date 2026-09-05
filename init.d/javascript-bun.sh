#!/bin/env bash
set -euo pipefail

sudo apt install -y curl unzip

# Bun
curl -fsSL https://bun.sh/install | bash
