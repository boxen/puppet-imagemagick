class imagemagick {
  require xquartz

  package {
    'lcms': before => Package['imagemagick'] ;
    'imagemagick': ;
  }
}
