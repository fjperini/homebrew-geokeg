class Geogig < Formula
  desc "Enable distributed versioning of geospatial data in a git-like context"
  homepage "http://geogig.org"
  url "http://download.locationtech.org/geogig/geogig-1.1.1.zip"
  sha256 "52d277bd9a18f071aff21fd4f58b1879fb2fad4dd3ddb589fc14050b9dd355bf"

  option "with-java",              "Use Java, requires Java 8 from https://www.java.com/en/download/mac_download.jsp"
  depends_on :java                 => ["1.8+"]

  def install
    bin.install "bin/geogig"
    prefix.install "lib"
  end

  test do
    system "#{bin}/geogig", "init"
    system "#{bin}/geogig", "status"
  end
end
