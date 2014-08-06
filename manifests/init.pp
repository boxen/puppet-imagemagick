# Public: Install Imagemagick
#
# Examples
#
#   include imagemagick
class imagemagick {
  include imagemagick::config
  include homebrew
  include xquartz

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
