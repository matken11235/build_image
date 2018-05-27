FROM ubuntu:16.04

RUN apt-get update -qq && \
    apt-get install -y -qq wget apt-file && \
    apt-file update && \
    apt-get install -y -qq software-properties-common && \
    wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && \
    apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-6.0 main" && \
    apt-get update -qq && \
    apt-get install -y -qq clang-6.0

