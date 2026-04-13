class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.04.2"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.04.2/enumctl-darwin-amd64"
      sha256 "8757e7308062e8a61b8d17dcd15c2ca2329cb226558d412a026a6c003b58f892"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.04.2/enumctl-darwin-arm64"
      sha256 "e2b19665420f509392d56d4c1b5ca28d9326df6b70957e1bbe86322376a0fc05"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.04.2/enumctl-linux-amd64"
      sha256 "3e21ffd6f3c1cf8fb55a721067faddec7867ec6b841a5178551b977c5c28b8b9"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.04.2/enumctl-linux-arm64"
      sha256 "a3b810632753d936bdec08f07eb829aa90a904f7853d689a3cb89e2de844a081"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
