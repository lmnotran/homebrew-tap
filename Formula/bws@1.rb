class BwsAT1 < Formula
  desc "Bitwarden Secrets Manager CLI"
  homepage "https://bitwarden.com/help/secrets-manager-cli/"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitwarden/sdk-sm/releases/download/bws-v1.0.0/bws-aarch64-apple-darwin-1.0.0.zip"
      sha256 "5dd716878e5627220aa254cbe4e41e978f226f72d9117fc195046709db363e20"
    else
      url "https://github.com/bitwarden/sdk-sm/releases/download/bws-v1.0.0/bws-x86_64-apple-darwin-1.0.0.zip"
      sha256 "7e06cbc0f3543dd68585a22bf1ce09eca1d413322aa22554a713cf97de60495a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bitwarden/sdk-sm/releases/download/bws-v1.0.0/bws-aarch64-unknown-linux-gnu-1.0.0.zip"
      sha256 "20a3dcb9e3ce7716a1dc3c0e1c76cea9d5e2bf75094cbb5aad54ced4304929cb"
    else
      url "https://github.com/bitwarden/sdk-sm/releases/download/bws-v1.0.0/bws-x86_64-unknown-linux-gnu-1.0.0.zip"
      sha256 "9077fb7b336a62abc8194728fea8753afad8b0baa3a18723fc05fc02fdb53568"
    end
  end

  def install
    bin.install "bws"
  end

  test do
    assert_match "bws #{version}", shell_output("#{bin}/bws --version")
  end
end
