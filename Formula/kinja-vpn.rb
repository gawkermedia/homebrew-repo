# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class KinjaVpn < Formula
  desc "Kinja VPN tools"
  homepage "https://kinja.com"
  url "https://github.com/gawkermedia/kinja-vpn/releases/download/v1.3/kinja-vpn.tar.gz"
  sha256 "5a319fccf9764f036bdbe1bad21bb8274280aa532c5d764761c7eb31f55a4bb5"
  version "1.3.0"
  # depends_on "cmake" => :build
  depends_on "openconnect"

  def install
    bin.install "kinja-vpn"
  end

  def post_install
    system "kinja-vpn", "create-password" 
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test kinja-vpn`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "file", bin/"kinja-vpn"
  end
end
