class Deadzone < Formula
  desc "Self-hosted MCP server for semantic doc search"
  homepage "https://github.com/laradji/deadzone"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/laradji/deadzone/releases/download/v#{version}/deadzone_v#{version}_darwin_arm64.tar.gz"
      sha256 "5a492b70f11c196be1afd088cbcb6293a8bcfe77ce55192441ec35168b082245"
    end
    # No darwin-amd64 build — release.yml only produces darwin-arm64.
  end

  def install
    bin.install "deadzone"
    pkgshare.install "LICENSE", "NOTICE", "README.md"
  end

  test do
    assert_match "deadzone", shell_output("#{bin}/deadzone -version")
  end
end
