# Written by the release of susumi 1.0.0 (cli/npm/scripts/formula.mjs). Do not edit: the next release replaces it.
class Susumi < Formula
  desc "Susumi boards from the terminal: list, create, move and comment on work items"
  homepage "https://susumi.dev/docs#cli"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/ISenseHostility/homebrew-susumi/releases/download/cli-v1.0.0/susumi_1.0.0_darwin_arm64.tar.gz"
      sha256 "4e2d24f6b878371dee0d563342cb282f8352d8ea5d705b70144604146ecf2f77"
    end
    on_intel do
      url "https://github.com/ISenseHostility/homebrew-susumi/releases/download/cli-v1.0.0/susumi_1.0.0_darwin_amd64.tar.gz"
      sha256 "124ddc533e41bb972e6702e352feaed479e357faaf57c88874787bc0feae2fbd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ISenseHostility/homebrew-susumi/releases/download/cli-v1.0.0/susumi_1.0.0_linux_arm64.tar.gz"
      sha256 "8d127a81c5d63749d77372d956303ebdaf8b3d59823669fe4620893366edc918"
    end
    on_intel do
      url "https://github.com/ISenseHostility/homebrew-susumi/releases/download/cli-v1.0.0/susumi_1.0.0_linux_amd64.tar.gz"
      sha256 "6374e504d3e87a070851493019f8545ba6adc54f7dd096db9a4206dfffbe19c4"
    end
  end

  def install
    bin.install "susumi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/susumi version")
  end
end
