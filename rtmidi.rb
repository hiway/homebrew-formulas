require "formula"

class Rtmidi < Formula
  homepage "https://github.com/thestk/rtmidi"
  url "https://github.com/thestk/rtmidi/archive/2.1.0.tar.gz"
  sha1 "0d6a6797cdd8d75e501873c3c96e37b5f20c9ab2"

  def install
    system "./configure", "--prefix=#{prefix}"
    
    system "make"
    lib.install Dir['*.a', '*.dylib']
    include.install Dir['*.h']
  end
end
