class imagemagick {
  include homebrew
  include xquartz
  include imagemagick::config

  homebrew::formula {
    'imagemagick':
      before => Package['boxen/brews/imagemagick'] ;
  }

  package {
    'boxen/brews/imagemagick':
      ensure  => $imagemagick::config::version,
      require => Class['xquartz'] ;
  }
}
