class TerminalDimensions < Formula
  desc "CLI tool to report terminal dimensions in both cells and pixels."
  homepage "https://github.com/dsanson/terminal_dimensions"
  url "https://github.com/dsanson/terminal_dimensions"
  head "https://github.com/dsanson/terminal_dimensions.git", :branch => "master"
  version "0.0.0"
   
   depends_on :macos => :yosemite

  def install
    system "gcc", "terminal_dimensions.c", "-o", "terminal_dimensions"
    bin.install "terminal_dimensions"
  end
  
  test do
    system "#{bin}/terminal_dimensions"
  end
end
