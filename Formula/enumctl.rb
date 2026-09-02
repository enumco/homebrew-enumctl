class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.09.1"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.1/enumctl-darwin-amd64"
      sha256 "aebb11081523502bbbf040016b7676bff1d528094f3c3e553cc4e44bcafc09a6"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.1/enumctl-darwin-arm64"
      sha256 "6770dd5a0c9676b2e7ae12d220ee82d79ccdd935c12b10d54f104a50eec73365"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.1/enumctl-linux-amd64"
      sha256 "25f8169cd1d15e2cd41d9987d248ba5f9cb59012477842dcae1ff379ecb431d7"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.1/enumctl-linux-arm64"
      sha256 "036e12ae798c8a37b1df37be287f3c72f15377a898a3963dc73e6d1a971c2b66"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
