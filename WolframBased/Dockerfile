FROM wolframresearch/wolframengine:12.2
USER root
RUN apt update && DEBIAN_FRONTEND=noninteractive apt upgrade -yy && DEBIAN_FRONTEND=noninteractive apt install -yy racket strace clang-format clang-tidy swig clang cmake git uuid-dev software-properties-common emacs-nox && DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:git-core/ppa && DEBIAN_FRONTEND=noninteractive apt update -yy && DEBIAN_FRONTEND=noninteractive apt install -yy git
RUN apt update && apt install wget && wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && add-apt-repository "deb http://apt.llvm.org/bionic/   llvm-toolchain-bionic-11  main" && apt update && apt install -y cmake clang-11 clang-tidy-11
