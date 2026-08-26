class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.08.2"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.08.2/enumctl-darwin-amd64"
      sha256 "7a345f8a5325701e98db9ef82a6129d83f762b75df097b9716152d4e35bc1ba8"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.08.2/enumctl-darwin-arm64"
      sha256 "c1cf5d43149da2babe913618e3492402d5e042cb43fa64e859ed0a5526ebc13b"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.08.2/enumctl-linux-amd64"
      sha256 "96a33e0dbef2709a5c0ff2bba3fad9a4955229af465a5293abe746994f0d50dc"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.08.2/enumctl-linux-arm64"
      sha256 "56ad4068ee4480e37baf1e862a69b00e55c0e7a251be7668fb05038135864be9"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
