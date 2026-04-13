class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.04.3"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.04.3/enumctl-darwin-amd64"
      sha256 "097f42c9fb5349dee6c4fd96cd500bfbbca59713d303f1382d71342c4afa02d1"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.04.3/enumctl-darwin-arm64"
      sha256 "5b835042e4313aa0e5814b4f933d579f1b2c5bee7d40e416b3e78df443582d01"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.04.3/enumctl-linux-amd64"
      sha256 "d2cf65cfa7965c3472af2655f2d5cb38f51344e69176199a46da7b2c8baf3e5f"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.04.3/enumctl-linux-arm64"
      sha256 "1ceeed796be4166d8deb96746321d94674a246de658f5bdc1a529f836a783baf"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
