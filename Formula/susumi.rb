# Written by the release of susumi 1.1.0 (cli/npm/scripts/formula.mjs). Do not edit: the next release replaces it.
class Susumi < Formula
  desc "Susumi boards from the terminal: list, create, move and comment on work items"
  homepage "https://susumi.dev/docs#cli"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ISenseHostility/homebrew-susumi/releases/download/cli-v1.1.0/susumi_1.1.0_darwin_arm64.tar.gz"
      sha256 "28588d14e2d4eee318fea2f481ad96ff51be0437636f0ca1979eee78d9aa3a24"
    end
    on_intel do
      url "https://github.com/ISenseHostility/homebrew-susumi/releases/download/cli-v1.1.0/susumi_1.1.0_darwin_amd64.tar.gz"
      sha256 "1331255397f09f893449ff1310702b170431696bcd1b1ba672b35419d09e1d62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ISenseHostility/homebrew-susumi/releases/download/cli-v1.1.0/susumi_1.1.0_linux_arm64.tar.gz"
      sha256 "b90d5b2441f3e3d0d4407875d9f4ab9c91635afdbfcc6b2b3772326296ae3274"
    end
    on_intel do
      url "https://github.com/ISenseHostility/homebrew-susumi/releases/download/cli-v1.1.0/susumi_1.1.0_linux_amd64.tar.gz"
      sha256 "2e933ebf462a225e948abf1b3940e20f132a58ca19f7b414b325b36773a58003"
    end
  end

  def install
    bin.install "susumi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/susumi version")
  end
end
