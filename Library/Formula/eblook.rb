require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Eblook < Formula
  homepage ''
  url 'http://ikazuhiro.s206.xrea.com/filemgmt_data/files/eblook-1.6.1%2Bmedia-20110801.tar.gz'
  sha1 '457c05a8be98b1838d780be200f140628d4dee17'

  depends_on 'ebu' => :build

  def install
    # ENV.j1  # if your formula's build system can't parallelize

    system "./configure", "--prefix=#{prefix}", "--with-ebu-conf=#{HOMEBREW_PREFIX}/etc/ebu.conf"
    # system "cmake", ".", *std_cmake_args
    system "make"
    system "make install"
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test eblook-1.6.1%2Bmedia`.
    system "false"
  end
end
