# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class KinjaCurl < Formula
  desc "Small utility to query Play service endpoints during development"
  homepage "https://kinja.com"
  url "https://github.com/gawkermedia/kinja-curl/releases/download/v1.1/kinja-curl.zip"
  sha256 "f59ad1e0dc4d0f13c985db19b98c72c6fe3a6ae99788d5b696e17fa1ddfe32dc"

  def install
    bin.install "kinja-curl"
    bash_completion.install "bash_completion" => "kinja-curl"
  end

  test do
    system "file", bin/"kinja-curl"
  end
end
