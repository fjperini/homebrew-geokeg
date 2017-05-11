class Geogig < Formula
  desc "Tool to handle distributed versioning of geospatial data."
  homepage "http://geogig.org"
  url "http://download.locationtech.org/geogig/geogig-1.1.0.zip"
  sha256 "6bc0eee8bb5a0d6bf27e5ce0cc7ba68b7e6e289731e837f1f51bb366b74ea7df"

  def install
    bin.install "bin/geogig"
    bin.install "bin/geogig-gateway"
    prefix.install "lib"
  end

  test do
    system "#{bin}/geogig init"
    system "#{bin}/geogig status"
  end
end
