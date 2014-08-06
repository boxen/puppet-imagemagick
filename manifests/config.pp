# Internal: Prepare your system for Imagemagick.
#
# Examples
#
#   include imagemagick::config
class imagemagick::config {
  require boxen::config

  $version    = '6.8.9-1-boxen2'
}
