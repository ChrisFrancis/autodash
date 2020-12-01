class Autodash < Formula
    version "v0.2.80009"
    desc "Automated Observability tools for Mobile Clients"
    homepage "http://t.uber.com/autodash"
    url 'http://artifactory.uber.internal:4587/artifactory/libs-release-local/com/uber/autodash/stable/v0.2.80009/autodash'
    sha256 '657dad7f40dd798818a56ad79d7c45f52c67a4414cefbf0fff5f2b1951f21714'

    depends_on "cerberus"
    depends_on "moncon"

    bottle :unneeded

    def install
        bin.install "autodash"
    end

    test do
        system "#{bin}/autodash", "-v"
    end
end

