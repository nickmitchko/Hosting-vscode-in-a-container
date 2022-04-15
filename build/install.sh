#!/bin/bash

# ===================================

# install.sh - Installs the code-server containerized support

# ===================================
code-server --auth none --bind-addr 0.0.0.0:8080 & sleep 10
code-server --install-extension ms-python.python
code-server --install-extension /install/intersystems-community.servermanager-3.1.2022020201.vsix
code-server --install-extension /install/intersystems-community.vscode-objectscript-1.5.2022020301.vsix
code-server --install-extension /install/intersystems.language-server-2.0.1@linux-x64.vsix
code-server --install-extension /install/pbrooks.hl7-0.0.12.vsix

pkill "/usr/lib/code-server --auth"

mkdir /home/irisowner/code
chmod -R 777 /home/irisowner/code
chmod -R 777 /home/irisowner/.local/share/code-server/

cp /install/workspace* /home/irisowner/code/workspace.code-workspace