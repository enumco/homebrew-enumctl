class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.09.10"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.10/enumctl-darwin-amd64"
      sha256 "59354ff5124ec19a1af0a4badc53b172fb20428995a42324a28c7ccd2316812b"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.10/enumctl-darwin-arm64"
      sha256 "73a7372b60f508db8d44bf852658209771ff6f25145195c8600f0d35dacdb01a"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.10/enumctl-linux-amd64"
      sha256 "a5ead7809018509a5d09a2a955400ce4bf8982af889bf17481cd7dbc2b35b357"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.10/enumctl-linux-arm64"
      sha256 "211f1ca4674854a1657532f0bebab03b6f7ebbcc82e09e1a3a5763485766c945"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
