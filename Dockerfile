FROM photoprism/photoprism

RUN  echo 'deb http://download.opensuse.org/repositories/graphics:/darktable/Debian_Next/ /' | tee /etc/apt/sources.list.d/graphics:darktable.list && \
     curl -fsSL https://download.opensuse.org/repositories/graphics:darktable/Debian_Next/Release.key | gpg --dearmor | tee /etc/apt/trusted.gpg.d/graphics_darktable.gpg > /dev/null && \
     apt-get update && apt -qq install apt-utils darktable && \
       /scripts/cleanup.sh