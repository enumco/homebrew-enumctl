class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.06.3"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.06.3/enumctl-darwin-amd64"
      sha256 "b8891880d79d190d40995444c4166af5fd2c56fd35f242ff6672f3ea561ed1c7"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.06.3/enumctl-darwin-arm64"
      sha256 "f22f45e2f8dea5efee415b4897d65f83eb16c2cce8170fd7c830147fe7eeb8f8"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.06.3/enumctl-linux-amd64"
      sha256 "cce63e87d6f42c5bb86f6db5d67c5f1eef38cc0b9b2567bbf236fd495268db06"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.06.3/enumctl-linux-arm64"
      sha256 "dd10af443448f6e012efbf999510f21a158720d52c8f06ac02e4d452201d5fd9"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
