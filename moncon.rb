require 'formula'

class Moncon < Formula
  desc "Moncon is a tool for creating and changing observability, safely and efficiently."
  homepage 'https://engdocs.uberinternal.com/moncon'
  url 'gitolite@code.uber.internal:sre/moncon.git', :using => :git, :tag => "0.4.21"
  head 'gitolite@code.uber.internal:sre/moncon.git', :using => :git

  bottle do
    root_url "https://dm6c03xwm3j8c.cloudfront.net/moncon"
    cellar :any_skip_relocation
    
    sha256 "feb9e9aafc109717a725ec1705f3d6cdc963bf8c8eb3b23807ee633c71e234da" => :high_sierra
    sha256 "004d05dd11063bc7946870bdf6f16f543357e4cd677762477c64b02d50ec6e34" => :mojave
    sha256 "c1de78636e3bdfb7faeb84ecab5f09fadd334298db4e32a6d593c1308633534e" => :sierra
  end

  def install
    bin.install "bin/moncon"
    bash_completion.install "completion_bash", "moncon"
    zsh_completion.install "completion_zsh", "_moncon"
  end

  test do
    assert_match version.to_s, shell_output("/usr/local/bin/moncon version")
  end
end

