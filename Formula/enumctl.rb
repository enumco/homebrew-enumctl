class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.07.1"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.07.1/enumctl-darwin-amd64"
      sha256 "7fbadc1d1c9928b62af2f9ed0e1185551b725b2d813cd7bd43f2f7302452fd87"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.07.1/enumctl-darwin-arm64"
      sha256 "d1a10b80f745e85787e9a63c0da613cbe250cddba67bf5ebcad66f473b0c769b"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.07.1/enumctl-linux-amd64"
      sha256 "70c660b66d853f8b5a97f154b36ce9253cbed9fb2d66624db039be924dd47ce0"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.07.1/enumctl-linux-arm64"
      sha256 "dcb1dea6c406e602e48db3893742ad281d4785b2cb3dda15de9d10261b728782"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
