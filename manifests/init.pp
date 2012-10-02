class imagemagick {
  require xquartz

  package { 'imagemagick':
    ensure => latest
  }
}
