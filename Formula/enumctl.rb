class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.08.3"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.08.3/enumctl-darwin-amd64"
      sha256 "42339c84a40b5b6ade04abd8139f658ef6b7e558631a39cf34654099b0fdaa33"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.08.3/enumctl-darwin-arm64"
      sha256 "061e5f833293a72dc5b9aae677d87eb569d3d6e5b92cf795a5edca02a4611cdc"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.08.3/enumctl-linux-amd64"
      sha256 "7caa767885cf506be219dfaa5cfbc0434ca722008a34c4f884da4dc9474d73a3"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.08.3/enumctl-linux-arm64"
      sha256 "9c051f7615319c5520fd9bb5d8621995e2952014019a2c0c7b46695809b0572c"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
