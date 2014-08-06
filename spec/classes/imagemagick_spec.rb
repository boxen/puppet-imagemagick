require 'spec_helper'

describe 'imagemagick' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :boxen_user => 'testuser',
    }
  end

  it do
    should include_class('imagemagick::config')
    should include_class('homebrew')
    should include_class('xquartz')

    should contain_homebrew__formula('imagemagick')
    should contain_homebrew__formula('little-cms2')

    should contain_package('boxen/brews/little-cms2')
    should contain_package('boxen/brews/imagemagick')
  end
end
