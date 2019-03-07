FROM nvidia/cuda:10.0-cudnn7-devel
RUN apt-get update \
    && apt-get install -y \
        clang-6.0 \
        libprotobuf-dev \
        git \
        ninja-build \
        pkg-config \
        protobuf-compiler \
        python3-pip \
    && apt-get clean all
RUN pip3 install -U pip \
    && pip install -U meson