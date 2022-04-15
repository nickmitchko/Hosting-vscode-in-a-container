#!/bin/bash

# ===================================

# boot.sh - If you need to do anything custom when you start this container
#           put those commands in this file. This boot.sh is called by the 
#           iris-main program, so if it returns a failure, the container
#           will not boot! i
#           
#           This file is the "after" parameter of the iris-main program
#           https://docs.intersystems.com/irisforhealth20212/csp/docbook/DocBook.UI.Page.cls?KEY=ADOCK#ADOCK_iris_iscmain


# ===================================

# Start vscode server here:

code-server --auth none --bind-addr 0.0.0.0:8080 &

# ... custom commands here: