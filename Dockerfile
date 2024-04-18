FROM ghcr.io/wang-zhichuang/qt5-riscv-docker:main

COPY --chown=1001 ./ /build/

RUN cd /build && cmake && make