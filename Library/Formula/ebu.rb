require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Ebu < Formula
  homepage ''
  url 'http://green.ribbon.to/~ikazuhiro/dic/files/ebu-4.4.3-20120704.tar.gz'
  sha1 '1aebbb3200bc1e6fb5cbcf160a76cd28fe7cc9ba'

  # depends_on 'cmake' => :build
depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    # ENV.j1  # if your formula's build system can't parallelize

    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test ebu`.
    system "false"
  end
end
