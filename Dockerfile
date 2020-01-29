FROM gitpod/workspace-full-vnc

USER gitpod

# RUN sudo add-apt-repository ppa:webupd8team/java -y \
#     && sudo apt-get update \
#     && sudo apt-get install -y \
#         default-jre \
#         oracle-java8-set-default \
#         libxtst-dev


# Install Eclipse deps
RUN sudo apt-get update \
    && sudo apt-get install -y \
        default-jre \
        libxtst-dev

# Install Eclipse
RUN wget "http://eclipse.mirror.rafal.ca/oomph/epp/2019-12/R/eclipse-inst-linux64.tar.gz" \
    && tar -xf *.tar.gz \
    && cd eclipse-installer \
    && sudo mv eclipse-inst /tmp
