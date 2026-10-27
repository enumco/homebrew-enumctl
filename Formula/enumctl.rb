class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.10.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.10.2/enumctl-darwin-amd64"
      sha256 "5ac336c651efca91c2ae82fb89bdaf7dca4600500a29e4a05cb900e038a8111e"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.10.2/enumctl-darwin-arm64"
      sha256 "f6df411a8f06540f9239ad663ca6e1dd72da247904a6a3a8ff3580ca4ada217a"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.10.2/enumctl-linux-amd64"
      sha256 "38daf10a4f1c60f805691e36d833a9a1a7f016d4210b896b6b7e77f61cff45a5"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.10.2/enumctl-linux-arm64"
      sha256 "7d34510475ea56e13b18b0487f01595da99d732fce9dae4aa218ca4e4dd51e26"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
