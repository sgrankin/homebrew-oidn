class Oidn < Formula
  desc "Intel(R) Open Image Denoise library "
  homepage "http://www.openimagedenoise.org/"
  url "https://github.com/OpenImageDenoise/oidn/releases/download/v1.0.0/oidn-1.0.0.src.tar.gz"
  sha256 "e3cb903c9def3a1485191da1a6d252055d907ed1b9a007b3bda1d3b522cd324e"

  depends_on "cmake" => :build
  depends_on "tbb"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end
end
