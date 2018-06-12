class S3M < Formula
  desc "S3M: Statistically Significant Shapelet Mining"
  homepage "https://github.com/BorgwardtLab/S3M"
  version "master"
  url "https://github.com/BorgwardtLab/S3M/archive/master.zip"
  depends_on "cmake" => :build
  depends_on "boost" => :build

  needs :cxx11

  def install
    args = std_cmake_args

    system "cmake", "code/cpp", *args
    system "make", "install"
  end

  test do
    system "#{bin}/s3m",  "--help"
  end
end
