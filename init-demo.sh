#!/bin/bash
# Demo Solidity-CI Pipeline Boilerplate
echo -ne "==> Please have `fly` in your $PATH"
echo -ne "==> Setting up demo..."
wget https://gist.githubusercontent.com/sambacha/71811db19fcc80a80fbdca5ff5842f5a/raw/546caa15bcb57564bbbc1da849f92ab80d378f88/solidity-ci.yml
fly --target tutorial set-pipeline -p solidity -c solidity-ci.yml
