FROM wolframresearch/wolframengine:12.2
USER root
RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -yy clang-format clang-tidy clang cmake git
