require 'formula'

class LittleCms2 < Formula
  homepage 'http://www.littlecms.com/'
  url 'http://sourceforge.net/projects/lcms/files/lcms/2.4/lcms2-2.4.tar.gz'
  sha1 '9944902864283af49e4e21a1ca456db4e04ea7c2'

  version '2.4-boxen1'

  option 'with-python', "Build Python bindings"

  depends_on 'jpeg' => :optional
  depends_on 'libtiff' => :optional

  def install
    args = ["--disable-debug", "--prefix=#{prefix}"]
    args << "--with-python" if build.include? "with-python"

    system "./configure", *args
    system "make install"
  end
end
