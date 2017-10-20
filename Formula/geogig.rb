class Geogig < Formula
  desc "Enable distributed versioning of geospatial data in a git-like context"
  homepage "http://geogig.org"
  url "http://download.locationtech.org/geogig/geogig-1.2.0.zip"
  sha256 "52d277bd9a18f071aff21fd4f58b1879fb2fad4dd3ddb589fc14050b9dd355bf"

  depends_on :java => ["1.8+", :recommended]

  def install
    args << "--without-java" if build.without? "java"

    bin.install "bin/geogig"
    prefix.install "lib"
  end

  test do
    system "#{bin}/geogig", "init"
    system "#{bin}/geogig", "status"
  end
end
