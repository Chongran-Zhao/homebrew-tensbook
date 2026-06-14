class Tensorforge < Formula
  desc "Symbolic tensor algebra for continuum mechanics (.tens DSL)"
  homepage "https://github.com/Chongran-Zhao/TensorForge"
  version "1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Chongran-Zhao/TensorForge/releases/download/v1.0/tensorforge-v1.0-aarch64-apple-darwin.tar.gz"
      sha256 "07e73369c0bbca63a73d123cc753f95e9c95b0ee0602f1acab194c9649b34f3a"
    end
  end

  def install
    bin.install "tensorforge"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tensorforge --version")
  end
end
