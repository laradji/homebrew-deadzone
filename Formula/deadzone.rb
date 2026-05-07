class Deadzone < Formula
  desc "Self-hosted MCP server for semantic doc search"
  homepage "https://github.com/laradji/deadzone"
  version "0.7.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/laradji/deadzone/releases/download/v#{version}/deadzone_v#{version}_darwin_arm64.tar.gz"
      sha256 "3ac13ff88cd86cad3319c7b6601abe068ab79aca2fb646c1e51563f8eb768d60"
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
