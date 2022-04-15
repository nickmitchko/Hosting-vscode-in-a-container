# IRIS container with vscode

> InterSystems IRIS container with vscode embedded and pre-connected

| Item         | Price    |
|--------------|:--------:|
| User         |  _SYSTEM |
| Password     |  SYS     |

![](img/HostedVScodeBanner.gif)

## Overview

This project creates an IRIS container with a hosted (web-based) version of vscode available in the same IRIS container. This provides:
* Same container code editing
* Pre-connection to the container's IRIS instance
* Links from the Management Portal
* Auto starting IDE with the container

# Quick Start

1. Download or `git clone` this repository
2. In the root of the project, run `docker build . -t vscode-irishealth-ml:latest --no-cache`
3. Run `docker-compose up`
4. Navigate to [Management Portal](http://localhost:52773/csp/sys/%25CSP.Portal.Home.zen)
5. Login with the user and password near the top of this guide
6. Click VSCODE Link on the favorites pane
7. When prompted use the same password in vscode to connect to the IRIS instance.

```bash
git clone
```
## 2. Build the container

This step will install the code server into the dockerfile.

```bash
$ code /path/to/downloaded/files
$ docker build . -t vscode-irishealth-ml-community
```

