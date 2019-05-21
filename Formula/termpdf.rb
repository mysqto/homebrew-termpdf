class Termpdf < Formula
  desc "Barebones graphical pdf/djvu/cbr/image viewer that works inside iTerm2 2.9+ and Kitty"
  homepage "https://github.com/dsanson/termpdf"
  url "https://github.com/dsanson/termpdf.git"
  head "https://github.com/dsanson/termpdf.git", :branch => "master"
  version "1.0.0"
  
   depends_on "poppler"
   depends_on "djvulibre"
   depends_on "libtiff"
   depends_on "unrar"
   depends_on "imagemagick"
   depends_on "bash"
   depends_on "terminal_dimensions"
   
   depends_on :macos => :yosemite

  def install
    bin.install "termpdf"
    bin.install "tpdfc"
  end
  test do
    system "#{bin}/termpdf", "-h"
  end 
end
