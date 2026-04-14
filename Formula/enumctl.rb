class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.04.5"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.04.5/enumctl-darwin-amd64"
      sha256 "7e4552695bf04a2fadaaa6a1c144a5b76a3ee6177b3981cbcda559f259259165"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.04.5/enumctl-darwin-arm64"
      sha256 "947ac6d8b4201c1a06c5bf1af1befca80dfb70740cc0248092a6322b7bcfaa86"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.04.5/enumctl-linux-amd64"
      sha256 "bc4ed0d056cf0df798cb4114ccd38d18f7abecd0144ac1705fc45bb1cf730f3c"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.04.5/enumctl-linux-arm64"
      sha256 "b8477864f2ed787ece61b3045f1d5ff6ea5124e2a0189196d95ff22b2f58030d"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
