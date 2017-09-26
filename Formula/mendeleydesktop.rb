# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Mendeleydesktop < Formula
  desc "Mendeley Desktop"
  homepage "https://www.mendeley.com"
  version "1.17.11"

  if MacOS.prefer_64_bit?
    url "https://www.mendeley.com/client/get/100-2/"
    sha256 "dc9fce0da7f49fb383f1ba8646ebd4cb43fb4f133b32e2c25803a3359d8da68f"
  else
    url "https://www.mendeley.com/client/get/100-1/"
    sha256 "0274aa2e7f915f62c607486591560b9a2aed3f4cf56ad226386a411f10369f1d"
  end

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink("#{libexec}/bin/mendeleydesktop" => "mendeleydesktop")
  end

end
