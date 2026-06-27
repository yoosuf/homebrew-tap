class Slash < Formula
  desc "Reversible token compressor for AI coding tools — reduces context size 40-60%"
  homepage "https://github.com/yoosuf/Slash"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yoosuf/Slash/releases/download/v1.0.0/slash-darwin-arm64.tar.gz"
      sha256 "8ffedf05b51c8e7492ed032b936e62d448647823b281aa245d549081eb4fe413"
    else
      url "https://github.com/yoosuf/Slash/releases/download/v1.0.0/slash-darwin-amd64.tar.gz"
      sha256 "b6a8895b4bbfb0c7c047df563c32934322751eccca5db86e7141723bef670792"
    end
  end

  on_linux do
    url "https://github.com/yoosuf/Slash/releases/download/v1.0.0/slash-linux-amd64.tar.gz"
    sha256 "456e57ff07868191477caa2ebf4a3cb0cdc4fab1f3b1eb5bf5171e10ebb5a2c9"
  end

  def install
    bin.install "slash-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "slash"
  end
end
