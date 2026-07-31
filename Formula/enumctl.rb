class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.07.3"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.07.3/enumctl-darwin-amd64"
      sha256 "8fb438bff4b83c22c33ac13273d446a39f71f51c0dad361d97080b0b5507537f"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.07.3/enumctl-darwin-arm64"
      sha256 "5a813395ccc90ea00e9ef78987ce6981ba9ba6c1aa81454f5ef96b046162914b"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.07.3/enumctl-linux-amd64"
      sha256 "8da680e726a17e465f50a71df9dd6a1a3293998b22af8b939f83edf774747d78"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.07.3/enumctl-linux-arm64"
      sha256 "7404ff550416b053d9fb77d82d2d3e9ef5695e5213f0d24e9372b3852fc04676"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
