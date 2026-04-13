class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.04.4"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.04.4/enumctl-darwin-amd64"
      sha256 "18f9178caf2b1fb637d087e40ba4f6decccd563a163644ced92e7a1cfab5449e"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.04.4/enumctl-darwin-arm64"
      sha256 "c030e74e3acb9e93355c085fc90218f977edb8767de8a2456dc72f15185b2a37"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.04.4/enumctl-linux-amd64"
      sha256 "b2fbe9f3356267d188b06fea37251686cb97def79fe707d7b207029fbb76e74f"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.04.4/enumctl-linux-arm64"
      sha256 "33b5c6d285e354ee987f911e360a0d58ed1753b70dab7126522221b7aa55166f"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
