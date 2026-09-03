class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.09.4"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.4/enumctl-darwin-amd64"
      sha256 "10d7408d28bcd71086215e7a407ed67a0bce3c83ef549cf632cbe141545a04f7"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.4/enumctl-darwin-arm64"
      sha256 "fb70b03d9c6c2703e89bb8eb8eddb0489e44865bad12da1c7645c8c21e8881ca"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.4/enumctl-linux-amd64"
      sha256 "d34a30c9fe295879da0d21dbf8b3fa5874efa4111e4cc6b324d00699830fe265"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.4/enumctl-linux-arm64"
      sha256 "47bd0bf5059fae92f1bbef835dc485d1cee0ccce95c4e743eea187d69fc2ba4b"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
