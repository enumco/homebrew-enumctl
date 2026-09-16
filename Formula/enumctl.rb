class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.09.11"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.11/enumctl-darwin-amd64"
      sha256 "6e97f237e6bcff3f8706a2785c0ca0f8ad93d771852cb038611f8b00c9534084"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.11/enumctl-darwin-arm64"
      sha256 "873175b413886cdefede16da6095ef04a9ff45c0b8869dec2054865271a20084"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.11/enumctl-linux-amd64"
      sha256 "840a677481c3e1e49be8ee8eaebf70032fb5c842f06fb6061ee89c049cb7e3eb"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.11/enumctl-linux-arm64"
      sha256 "058f16ddc77873ed663aea40b2da5b680505d78998b503619a11866ce212e89c"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
