class Ripser < Formula
  desc "Ripser is a lean C++ code for the computation of Vietoris–Rips persistence barcodes. It can do just this one thing, but does it extremely well."
  homepage "https://github.com/Ripser/ripser"
  version "master"
  url "https://github.com/Ripser/ripser/archive/master.zip"

  def install
    system "make"

    # Ensures that the path exists; since the default Makefile does not
    # provide an `install` target, let's just do it manually.
    bin.mkpath
    bin.install "ripser"
  end

  test do
    system "#{bin}/ripser",  "--help"
  end
end
