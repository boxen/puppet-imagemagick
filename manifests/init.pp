class imagemagick {
  include homebrew
  include xquartz

  homebrew::formula {
    'little-cms':
      source => 'puppet:///modules/imagemagick/brews/little-cms.rb',
      before => Package['little-cms'] ;
    'imagemagick':
      before => Package['imagemagick'] ;
  }

  package {
    'little-cms':
      ensure  => '1.19-boxen1',
      before  => Package['imagemagick']
      require => Class['xquartz'] ;
    'imagemagick':
      ensure  => '6.8.0-10-boxen1',
      require => Class['xquartz'] ;
  }
}
