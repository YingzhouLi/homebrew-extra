# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Mendeleydesktop < Formula
  desc "Mendeley Desktop"
  homepage "https://www.mendeley.com"
  url "https://www.mendeley.com/client/get/100-2/"
  version "1.17.11"
  sha256 "dc9fce0da7f49fb383f1ba8646ebd4cb43fb4f133b32e2c25803a3359d8da68f"

  depends_on :arch => :x86_64

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink("#{libexec}/mendeleydesktop" => "mendeleydesktop")
  end

end
