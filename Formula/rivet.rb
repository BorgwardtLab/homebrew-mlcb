class Rivet < Formula
  desc "RIVET is a tool for Topological Data Analysis, in particular two-parameter persistent homology."
  homepage "https://github.com/rivetTDA/rivet"
  version "master"
  url "https://github.com/rivetTDA/rivet/archive/master.zip"
  depends_on "cmake" => :build
  depends_on "boost" => :build

  def install
    args = std_cmake_args
    system "cmake", *args
    system "make", "rivet_console"

    # Ensures that the path exists; since the default installation of
    # Rivet does not provide an `install` target, let's just do it
    # manually.
    bin.mkpath
    bin.install "rivet_console"
  end

  test do
    system "#{bin}/ripser",  "--help"
  end
end
