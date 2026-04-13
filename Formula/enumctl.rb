class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.04.1"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.04.1/enumctl-darwin-amd64"
      sha256 "4161d1f9ca84f0d3795953a9663766bb40259e9e27e473f2740cf8aa8ae30692"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.04.1/enumctl-darwin-arm64"
      sha256 "8227b2bcf125f871505d72af20ea1d9fee89b105ce054faf57406c863d4e5527"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.04.1/enumctl-linux-amd64"
      sha256 "e8a0aae70b827cd6febe5d466b7e66910a0287dee201001faa69fc97f8506f4e"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.04.1/enumctl-linux-arm64"
      sha256 "5783557a535201d9837bfa6a7565593f926a2ffead0974aa44a803f50b01bfe8"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
