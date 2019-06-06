# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class KinjaVpn < Formula
  desc "Kinja VPN tools"
  homepage "https://kinja.com"
  url "https://github.com/gawkermedia/kinja-vpn/releases/download/v1.2/kinja-vpn.tar.gz"
  sha256 "a2fc230183f02a9ff37e695492aac1acf2ee5c3894f3eab511b1916fad29e08d"
  version "1.2.0"
  # depends_on "cmake" => :build
  depends_on "openconnect"

  def install
      bin.install "kinja-vpn"
      system "./kinja-vpn", "create-password"
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
