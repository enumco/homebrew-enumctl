class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.09.6"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.6/enumctl-darwin-amd64"
      sha256 "9e50c996ca8932fa5292c6083c1d2fce6f4919c1db985938beccfefbb5ba6c9d"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.6/enumctl-darwin-arm64"
      sha256 "e123a71fb09a18851f52705bd6356144ef7dae204b7ea750787d4c935f8de6d1"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.09.6/enumctl-linux-amd64"
      sha256 "e9f98b870584226aefc60322b0f518ea0df728cc3793882771506cba799ff771"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.09.6/enumctl-linux-arm64"
      sha256 "fd9daf8aa5aed7060cd52e45e1044fdc05aa498e3b4ad4e89066c67849eb9085"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
