class Geogig < Formula
  desc "Tool to handle distributed versioning of geospatial data."
  homepage "http://geogig.org"
  url "http://download.locationtech.org/geogig/geogig-1.0.zip"
  sha256 "b034524860fda1f42d1cc6f72662540a0da450611027a96088a3cf137d7a4ff1"

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
