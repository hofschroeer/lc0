FROM nvidia/cuda:10.0-cudnn7-devel
RUN apt-get update \
    && apt-get install -y \
        clang-6.0 \
        libprotobuf-dev \
        git \
        meson \
        ninja-build \
        pkg-config \
        protobuf-compiler \
    && apt-get clean all