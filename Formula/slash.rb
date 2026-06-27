class Slash < Formula
  desc "Reversible token compressor for AI coding tools — reduces context size 40-60%"
  homepage "https://github.com/yoosuf/Slash"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yoosuf/Slash/releases/download/v1.0.0/slash-darwin-arm64.tar.gz"
      sha256 "892d4e8aa42b59333efb7291b767f29890722211303c28e625c57d3e13eed9bf"
    else
      url "https://github.com/yoosuf/Slash/releases/download/v1.0.0/slash-darwin-amd64.tar.gz"
      sha256 "e4d2af0a41bb5f8b8dd8b9fe44d9552edaa6c7e60adddb1efd7ce7fa0663103d"
    end
  end

  on_linux do
    url "https://github.com/yoosuf/Slash/releases/download/v1.0.0/slash-linux-amd64.tar.gz"
    sha256 "778d88e0f309f68534c9cdc6295e723ac0d2a26b928a2a75e78ff3071bd7ade4"
  end

  def install
    bin.install "slash-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "slash"
  end
end
