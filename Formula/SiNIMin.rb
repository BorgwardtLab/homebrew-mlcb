class Sinimin < Formula
  desc "SiNIMin: Significant Network Interval Mining"
  homepage "https://github.com/BorgwardtLab/SiNIMin"
  version "master"
  url "https://github.com/BorgwardtLab/SiNIMin/archive/master.zip"
  depends_on "cmake" => :build

  fails_with :clang do
    cause "No OpenMP support for C++"
  end

  def install
    args = std_cmake_args

    system "cmake", "code/cpp", *args
    system "make", "install"
  end

  test do
    system "#{bin}/sinimin"
    system "#{bin}/sinimin_fwer"
  end
end
