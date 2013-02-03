class imagemagick {
  include homebrew
  include xquartz

  homebrew::formula {
    'little-cms':
      source => 'puppet:///modules/imagemagick/brews/little-cms.rb',
      before => Package['boxen/brews/little-cms'] ;
    'imagemagick':
      before => Package['boxen/brews/imagemagick'] ;
  }

  package {
    'boxen/brews/little-cms':
      ensure  => '1.19-boxen1',
      before  => Package['boxen/brews/imagemagick'],
      require => Class['xquartz'] ;
    'boxen/brews/imagemagick':
      ensure  => '6.8.0-10-boxen1',
      require => Class['xquartz'] ;
  }
}
