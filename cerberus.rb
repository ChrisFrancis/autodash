require 'formula'

class Cerberus < Formula
  desc "CLI and deamon to test/dev againt production services"
  homepage 'https://engdocs.uberinternal.com/cerberus'
  url 'gitolite@code.uber.internal:go-code', :using => :git
  head 'gitolite@code.uber.internal:go-code', :using => :git

  version "1.14.0"

  bottle do
    root_url "https://dm6c03xwm3j8c.cloudfront.net/cerberus"
    cellar :any_skip_relocation
    
    sha256 "7ce7297a07f97ffccba414239acfa41a8be220ce3c1fc7bfe835319a8c16a751" => :catalina
    sha256 "70697a973a1d6ddb1935e9604def5cd638e022487b4e15f6a16b12cc7604c49e" => :high_sierra
    sha256 "b4e0fb12a2866791f4eaba32fd215010c125937a1c32e1bda47e44f754ce12f7" => :mojave
    sha256 "760f91680bd966ae4a258a3fca4fe778ad0007c398f735c5ac2959e19feab828" => :sierra
  end

  depends_on "go" => :build

  test do
    assert_match version.to_s, shell_output("/usr/local/bin/cerberus version")
  end
end

