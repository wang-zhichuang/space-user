FROM xfan1024/openeuler:23.03-light
RUN dnf -y qt5-devel gcc gcc-c++ make wayland-devel libX11-devel libXext-devel libXrender-devel libXrandr-devel libXinerama-devel libXi-devel libXcursor-devel libXfixes-devel libXft-devel libXtst-devel libXcomposite-devel libXdamage-devel libXv-devel libXScrnSaver-devel libXxf86vm-devel libdrm-devel libpciaccess-devel mesa-libGL-devel mesa-libGLU-devel libpng-devel libjpeg-devel libtiff-devel

COPY --chown=1001 ./ /build/

RUN cd /build && cmake && make