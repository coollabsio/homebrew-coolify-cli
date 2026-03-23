# typed: false
# frozen_string_literal: true

class CoolifyCli < Formula
  desc "CLI tool for interacting with the Coolify API"
  homepage "https://coolify.io"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/coollabsio/coolify-cli/releases/download/v1.5.0/coolify-cli_1.5.0_darwin_amd64.tar.gz"
      sha256 "bbdbda3ebd554140ba2ed99d637073cb5250670ceaa912d1de8ee0d453ba1d77"
    end
    on_arm do
      url "https://github.com/coollabsio/coolify-cli/releases/download/v1.5.0/coolify-cli_1.5.0_darwin_arm64.tar.gz"
      sha256 "876aa4b7bbe056e02e86a21a453aa01e89ce32f07fdbec3be02eed4b90b4aff8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/coollabsio/coolify-cli/releases/download/v1.5.0/coolify-cli_1.5.0_linux_amd64.tar.gz"
      sha256 "74fbd8a82c4154765535ee876db11af7428207946b26421ff00be5aa8047bfea"
    end
    on_arm do
      url "https://github.com/coollabsio/coolify-cli/releases/download/v1.5.0/coolify-cli_1.5.0_linux_arm64.tar.gz"
      sha256 "d5923ad1f93b5f7cd120fb93fc6f488f0355d351fff783fc8881d0ce1f81e924"
    end
  end

  def install
    bin.install "coolify"
  end

  test do
    system "#{bin}/coolify", "version"
  end
end
