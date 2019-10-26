# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class KinjaCurl < Formula
  desc "Small utility to query Play service endpoints during development"
  homepage "https://kinja.com"
  url "https://github.com/gawkermedia/kinja-curl/releases/download/v1.2/kinja-curl.zip"
  sha256 "ef34dece3b38a502851b85d9460068006a2f5cc81cdf5471cf25765849d06146"
  version "1.2.0"

  def install
    bin.install "kinja-curl"
    bash_completion.install "bash_completion" => "kinja-curl"
    zsh_completion.install "zsh_completion" => "_kinja-curl"
  end

  test do
    system "file", bin/"kinja-curl"
  end
end
