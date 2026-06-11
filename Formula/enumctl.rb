class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.06.4"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.06.4/enumctl-darwin-amd64"
      sha256 "30457c70327fe399cff503ade5471b041df9b4e135c84ff330cd1f9b175e24e7"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.06.4/enumctl-darwin-arm64"
      sha256 "a4d1c4228962650ebeb20ab7dd99d660cc03d1b8ad6ff419632a9023795c5d9b"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.06.4/enumctl-linux-amd64"
      sha256 "e6c55e9fad5841a5ae553061bb83ae9ccbea9fc8b53339759338e1160a3780b1"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.06.4/enumctl-linux-arm64"
      sha256 "37f6b7929bd10a10694a9c4060c0a0ee569f43d0d799bbf7c111d428b614f71c"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
