class Deadzone < Formula
  desc "Self-hosted MCP server for semantic doc search"
  homepage "https://github.com/laradji/deadzone"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/laradji/deadzone/releases/download/v#{version}/deadzone_v#{version}_darwin_arm64.tar.gz"
      sha256 "23099866942569ec8ca19950943c3f061f7fee3a568571aa56e74caf4beac1e1"
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
