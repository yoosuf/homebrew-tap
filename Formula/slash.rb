class Slash < Formula
  desc "Reversible token compressor for AI coding tools — reduces context size 40-60%"
  homepage "https://github.com/yoosuf/Slash"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yoosuf/Slash/releases/download/v1.0.0/slash-darwin-arm64.tar.gz"
      sha256 "bd1797bf44651036d8f7aba1de5499ed096c7027efb38e8b6127390d36590a1f"
    else
      url "https://github.com/yoosuf/Slash/releases/download/v1.0.0/slash-darwin-amd64.tar.gz"
      sha256 "2a2d5256679d038d8ae89289084e5c858fa8175b59d59c5a76b417b50903f7bd"
    end
  end

  on_linux do
    url "https://github.com/yoosuf/Slash/releases/download/v1.0.0/slash-linux-amd64.tar.gz"
    sha256 "cfd604557d180c2b49f1f944a4afee3583c7edc18f8b9c724d23f60a36c1a211"
  end

  def install
    bin.install "slash-#{OS.kernel_name.downcase}-#{Hardware::CPU.arch}" => "slash"
  end
end
