class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.06.2"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.06.2/enumctl-darwin-amd64"
      sha256 "325461396df60b1d2c17cf54729dbf114e67638f366fbc019f9ae318729a24a9"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.06.2/enumctl-darwin-arm64"
      sha256 "8d1b8889bdc73946bd2ffe82bdb7b764a897ef183cc6a26025b810db592feb0b"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.06.2/enumctl-linux-amd64"
      sha256 "3901d05b5fb07ccada2f5cfd362fb8aafdc3f473a1c061cef1da0f1b574cf8f4"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.06.2/enumctl-linux-arm64"
      sha256 "d8f0ac5c2e00e6889b70e8f2442d44d0d5d95f57b93ecc2f17bebd30381119ce"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
