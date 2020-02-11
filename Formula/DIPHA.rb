class Dipha < Formula
  desc "DIPHA: A Distributed Persistent Homology Algorithm"
  homepage "https://github.com/DIPHA/dipha"
  version "master"
  url "https://github.com/DIPHA/dipha/archive/master.zip"
  depends_on "cmake" => :build
  depends_on "open-mpi" => :build

  def install
    args = std_cmake_args

    system "cmake", *args
    system "make", "install"
  end

  test do
    system "#{bin}/dipha",  "--help"
  end
end
