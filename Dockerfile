FROM photoprism/photoprism

  echo 'deb http://download.opensuse.org/repositories/graphics:/darktable/Debian_Next/ /' | sudo tee /etc/apt/sources.list.d/graphics:darktable.list
  curl -fsSL https://download.opensuse.org/repositories/graphics:darktable/Debian_Next/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/graphics_darktable.gpg > /dev/null
  apt-get update && sudo apt -qq install darktable && \
    /scripts/cleanup.sh