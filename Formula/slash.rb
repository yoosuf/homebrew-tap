class Slash < Formula
  desc "Reversible token compressor for AI coding tools — reduces context size 40-60%"
  homepage "https://github.com/yoosuf/Slash"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yoosuf/Slash/releases/download/v1.0.0/slash-darwin-arm64.tar.gz"
      sha256 "c9e139e269820a9123e824bd001b9ca25ff2993dde7526ec3ccdc4bd459ddf46"
    else
      url "https://github.com/yoosuf/Slash/releases/download/v1.0.0/slash-darwin-amd64.tar.gz"
      sha256 "510324820872e99f8a0e6c044b66fa53af59e15d7e9a35ae7900c35f0b816a67"
    end
  end

  on_linux do
    url "https://github.com/yoosuf/Slash/releases/download/v1.0.0/slash-linux-amd64.tar.gz"
    sha256 "6874faab5ae13c1d518a1943747b9eb8d8a950333bbb739a806cb995179d0930"
  end

  def install
    bin.install "slash-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "slash"
  end
end
