class Chimi < Formula
  desc "A Terminal Anime Streaming CLI"
  homepage "https://github.com/mortezafa/Chimimouryou"
  url "https://github.com/mortezafa/Chimimouryou/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6d8f4447ed2161088f746ccb88787672a709411eba81691daa5c5e4736887a9d"
  license "MIT"

  # Dependencies
  depends_on "go"   # Required to build the CLI
  depends_on "mpv"  # Required for streaming functionality

  def install
    # Build the Go binary
    system "go", "build", "-o", "#{bin}/chimi", "./cmd/main.go"
  end

  test do
    # Simple test to ensure the binary works
    system "#{bin}/chimi", "--version"
  end
end

