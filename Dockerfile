FROM photoprism/photoprism

RUN  echo 'deb http://download.opensuse.org/repositories/graphics:/darktable/Debian_Next/ /' | tee /etc/apt/sources.list.d/graphics:darktable.list && \
     curl -fsSL https://download.opensuse.org/repositories/graphics:darktable/Debian_Next/Release.key | gpg --dearmor | tee /etc/apt/trusted.gpg.d/graphics_darktable.gpg > /dev/null && \
     apt-get update && \
     apt -qq install apt-utils && \
     wget -O darktable_4.0.0-1.1_amd64.deb 'https://download.opensuse.org/repositories/graphics:/darktable/Debian_Next/amd64/darktable_4.0.0-1.1_amd64.deb' && \
     apt -qq install darktable || dpkg -i darktable_4.0.0-1.1_amd64.deb && \
     rm -f darktable_4.0.0-1.1_amd64.deb && \
       /scripts/cleanup.sh