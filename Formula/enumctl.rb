class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.06.1"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.06.1/enumctl-darwin-amd64"
      sha256 "acc092588c73a9b00bfbecf439286dc049723735adab52172519677c7761e88c"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.06.1/enumctl-darwin-arm64"
      sha256 "04893356a458a21beef4a2f46257fcf460b0f96687574fe01eed44d4381dfc46"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.06.1/enumctl-linux-amd64"
      sha256 "c978b4f44cbaeaff1d133f4dcbd71ce0536fbb6e20e7e78d4022843f2e467993"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.06.1/enumctl-linux-arm64"
      sha256 "5f5bfb499158a2e07be24cc87ed1145f9f33d135ff7a26601b4921704cef3b24"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
