class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.08.1"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.08.1/enumctl-darwin-amd64"
      sha256 "ddb10c818fab9a4886b907bdc092e7af0f2aabbd22fe4c2b03f073c485d2221b"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.08.1/enumctl-darwin-arm64"
      sha256 "7e0079a27e2562fda77c5bdba491adde8db2b8c13f53018ac1dce1a6db6042ed"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.08.1/enumctl-linux-amd64"
      sha256 "7adc8aaeb4b4eb99eacb9c915744fbfd96995173483343e43ff638a7f25e34b3"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.08.1/enumctl-linux-arm64"
      sha256 "76e9c51184ed2c61ae3468aa3f834bdf7b94321bc0d7f1ad5d766f05985d09b4"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
