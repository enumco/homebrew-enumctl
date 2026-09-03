class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.09.3"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.3/enumctl-darwin-amd64"
      sha256 "c4e33cb3bb8c662f8e5439912baa5965bc2a11c279d7b7241cb3a3487d59bb60"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.3/enumctl-darwin-arm64"
      sha256 "8168370a0e566841c39758f6c695cd313e0ee16ebb0c2a6fc1179a735bd3058b"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.3/enumctl-linux-amd64"
      sha256 "2db4e0aa1b1c848ccddfa51ae4cd9c6cf1908ae939dfe02104e3765fbd08ea94"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.3/enumctl-linux-arm64"
      sha256 "99c9afe310b61f7e136e56cf06650039bad3d066d575f98c16b1aee1fa3ee5e5"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
