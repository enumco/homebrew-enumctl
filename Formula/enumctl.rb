class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.09.9"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.9/enumctl-darwin-amd64"
      sha256 "b97268073a0cb399ebef43219ce9d3835e16aa548203fbcb0aeb4438825d53f0"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.9/enumctl-darwin-arm64"
      sha256 "4d9a2b78848d62f615a2fee50b5076e02b12004c0714a35f0eac23ce4b12c136"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.9/enumctl-linux-amd64"
      sha256 "77596fd4ca723676b17e59cf10de96d4d0ac92f1aeadfbbab02e9d4ca5415735"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.9/enumctl-linux-arm64"
      sha256 "d18882ad2367ca01a22ad147ec2a6b61dc344d29b88f06c12982fff3b3b23f2b"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
