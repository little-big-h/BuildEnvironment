FROM wolframresearch/wolframengine:12.2
USER root
RUN apt update && DEBIAN_FRONTEND=noninteractive apt upgrade -yy && DEBIAN_FRONTEND=noninteractive apt install -yy clang-format clang-tidy clang cmake git uuid-dev software-properties-common && DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:git-core/ppa && DEBIAN_FRONTEND=noninteractive apt update -yy && DEBIAN_FRONTEND=noninteractive apt install -yy git
