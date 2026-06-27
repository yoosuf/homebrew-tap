class Slash < Formula
  desc "Reversible token compressor for AI coding tools — reduces context size 40-60%"
  homepage "https://github.com/yoosuf/Slash"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yoosuf/Slash/releases/download/v1.0.0/slash-darwin-arm64.tar.gz"
      sha256 "430dfae979d14a47411184d77ea2d2396c31ae4f046bda6c1e1a1de6a6f5d99b"
    else
      url "https://github.com/yoosuf/Slash/releases/download/v1.0.0/slash-darwin-amd64.tar.gz"
      sha256 "5a23ad6dab33ba9fdb4b0bf204d0f4d7d1bbbca3cb038fa77485fddcb5c52787"
    end
  end

  on_linux do
    url "https://github.com/yoosuf/Slash/releases/download/v1.0.0/slash-linux-amd64.tar.gz"
    sha256 "a8fb1619c6bfea776c5ea3e21047f0ab7bc9bb06f7a7e4565e564794353d83ab"
  end

  def install
    bin.install "slash-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "slash"
  end
end
