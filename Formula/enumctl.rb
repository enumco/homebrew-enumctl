class Enumctl < Formula
  desc "CLI for managing enum cloud infrastructure"
  homepage "https://enum.co"
  version "2026.07.2"
  license :cannot_represent

  on_macos do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.07.2/enumctl-darwin-amd64"
      sha256 "997289358c56e0a0d58a777d25ed08b7672c2dfb2dca083338a191ab7719bf71"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.07.2/enumctl-darwin-arm64"
      sha256 "3e4d4d432576ad7af8344d4308dfdc5672f7c4e9ca737309b3ea68c171eb2120"
    end
  end

  on_linux do
    on_intel do
      url "https://dl.enum.co/enumctl/2026.07.2/enumctl-linux-amd64"
      sha256 "7bca0a195357865190dfd975fb9901288fc00619d658aa82e94d21ce6b50903a"
    end
    on_arm do
      url "https://dl.enum.co/enumctl/2026.07.2/enumctl-linux-arm64"
      sha256 "a002522d9e4d7137fff3807f24f2cea526598a059c8691eae8a5f36d94bf6f5a"
    end
  end

  def install
    bin.install Dir["enumctl-*"].first => "enumctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/enumctl --version")
  end
end
