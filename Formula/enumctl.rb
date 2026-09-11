class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.09.7"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.7/enumctl-darwin-amd64"
      sha256 "574ee5cff55ce6e27fe2e8a8944b0be6e9b756afaa5fc8bdf30e2b6a8f2174ed"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.7/enumctl-darwin-arm64"
      sha256 "122be4ba19f0ad471b3069a04594474c030ab82d9e4352dbd1742b945a332da2"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.7/enumctl-linux-amd64"
      sha256 "076c68d2aece6994f8ebfc3cf6eb72eb91ac961b41dab9ffc737bb4359f4fe23"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.7/enumctl-linux-arm64"
      sha256 "e949a4ba5b23c2b5f60beab1dff6496b82089c8f3a0a4b24ab0a2cb1b38569e4"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
