## BUILDING
##   (from project root directory)
##   $ docker build -t java-for-mykaelnguyen-javascript-logging-lab-bootcamp-prep-000 .
##
## RUNNING
##   $ docker run java-for-mykaelnguyen-javascript-logging-lab-bootcamp-prep-000

FROM gcr.io/stacksmith-images/minideb-buildpack:jessie-r4

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="wqwbf5h" \
    STACKSMITH_STACK_NAME="Java for mykaelnguyen/javascript-logging-lab-bootcamp-prep-000" \
    STACKSMITH_STACK_PRIVATE="1"

# Install required system packages
RUN install_packages libc6 libxext6 libx11-6 libxcb1 libxau6 libxdmcp6 libglib2.0-0 libfreetype6 libfontconfig1 libstdc++6 libgcc1 zlib1g libselinux1 libpng12-0 libexpat1 libffi6 libpcre3 libxml2 liblzma5

RUN bitnami-pkg install java-1.8.0_111-1 --checksum f7705a3955f006eb59a6e4240a01d8273b17ba38428d30ffe7d10c9cc525d7be

ENV PATH=/opt/bitnami/java/bin:$PATH \
    JAVA_HOME=/opt/bitnami/java

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

# Java base template
COPY . /app
WORKDIR /app
