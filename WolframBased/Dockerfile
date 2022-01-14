FROM wolframresearch/wolframengine:latest
USER root
RUN apt update && DEBIAN_FRONTEND=noninteractive apt upgrade -yy && DEBIAN_FRONTEND=noninteractive apt install -yy racket apport expect lldb strace clang-format clang-tidy swig clang cmake curl git uuid-dev software-properties-common emacs-nox && DEBIAN_FRONTEND=noninteractive add-apt-repository ppa:git-core/ppa && DEBIAN_FRONTEND=noninteractive apt update -yy && DEBIAN_FRONTEND=noninteractive apt install -yy git unzip
RUN apt update && apt install wget && wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && add-apt-repository "deb http://apt.llvm.org/bionic/   llvm-toolchain-bionic-11  main" && apt update && apt install -y cmake clang-11 clang-tidy-11 libc++-11-dev libc++abi-11-dev
RUN apt install -y libstdc++-8-dev
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg && echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null && apt update && apt install gh
RUN raco pkg install --deps search-auto threading || true
RUN apt update && apt install ccache
RUN curl -L https://iterm2.com/shell_integration/install_shell_integration_and_utilities.sh | bash
RUN ln -s ../../bin/ccache /usr/lib/ccache/clang-11; ln -s ../../bin/ccache /usr/lib/ccache/clang++-11
CMD /bin/bash
