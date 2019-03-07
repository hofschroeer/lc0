FROM nvidia/cuda:10.0-cudnn7-devel
RUN apt-get update &&\
    apt-get install -y curl wget supervisor git \
            clang-6.0 libopenblas-dev ninja-build protobuf-compiler libprotobuf-dev \
            python3-pip &&\
    apt-get clean all
RUN pip3 install meson