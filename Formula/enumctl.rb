class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.09.5"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.5/enumctl-darwin-amd64"
      sha256 "5433786fe407811b81c099744acb926969057313182132053271f513854715c3"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.5/enumctl-darwin-arm64"
      sha256 "e80549574ec8ba5583b6fc369856a11d85f60ba5423b97c5693da2f3224a2e0e"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.5/enumctl-linux-amd64"
      sha256 "976b1d4eddc30959feeba16afc7ab768ad9494ecb152d2adff136cf194104637"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.5/enumctl-linux-arm64"
      sha256 "1eb0f6ce6a3bb2f60622cb10e098183b09b180b4ac035e535eeb1de11faa4ee1"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
