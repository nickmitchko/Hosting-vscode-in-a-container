# Latest Community Instance -- Eval license with some limits
FROM intersystemsdc/irishealth-ml-community:latest
LABEL maintainer="Nicholai Mitchko <nmitchko@intersystems.com>"

USER root

RUN mkdir /install
ADD --chown=${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_MGRUSER} ./build/* /install/

# Install some utilites
RUN apt-get update -yq
RUN apt-get -y install curl gnupg ca-certificates

# This line installs the lastest code-server
RUN curl -fsSL https://code-server.dev/install.sh | sh

# RUN systemctl enable --now code-server@${ISC_PACKAGE_MGRUSER}
USER ${ISC_PACKAGE_MGRUSER}
RUN bash /install/install.sh

RUN iris start $ISC_PACKAGE_INSTANCENAME \
    && iris session $ISC_PACKAGE_INSTANCENAME -U "%SYS" < /install/zpm.script \
    && iris stop $ISC_PACKAGE_INSTANCENAME quietly

ENTRYPOINT ["/iris-main"]