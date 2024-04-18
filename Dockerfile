FROM xfan1024/openeuler:23.03-light
RUN yum -y dnf-command(qt5-devel) gcc gcc-c++ make

COPY --chown=1001 ./ /build/

RUN cd /build && cmake && make