FROM racket/racket
USER root
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt upgrade -yy
RUN DEBIAN_FRONTEND=noninteractive apt install -yy rsync
RUN raco pkg install -i -j $(nproc) --deps search-auto frog || true

