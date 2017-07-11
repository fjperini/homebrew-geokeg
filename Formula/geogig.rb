class Geogig < Formula
  desc "Tool to handle distributed versioning of geospatial data."
  homepage "http://geogig.org"
  url "http://download.locationtech.org/geogig/geogig-1.1.1.zip"
  sha256 "52d277bd9a18f071aff21fd4f58b1879fb2fad4dd3ddb589fc14050b9dd355bf"

  def install
    bin.install "bin/geogig"
    prefix.install "lib"
  end

  test do
    system "#{bin}/geogig init"
    system "#{bin}/geogig status"
  end
end
