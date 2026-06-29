class BwsAT2 < Formula
  desc "Bitwarden Secrets Manager CLI"
  homepage "https://bitwarden.com/help/secrets-manager-cli/"
  license "GPL-3.0-only"

  livecheck do
    url :stable
    regex(/^bws-v?(\d+(?:\.\d+)+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitwarden/sdk-sm/releases/download/bws-v2.1.0/bws-aarch64-apple-darwin-2.1.0.zip"
      sha256 "9cb1c1c6e6164d83b2e339883ba02b4cbb37188ce9a484b1ce8249443163e066"
    else
      url "https://github.com/bitwarden/sdk-sm/releases/download/bws-v2.1.0/bws-x86_64-apple-darwin-2.1.0.zip"
      sha256 "6f626b3971368902af1b9847c02791a1b4666969d7561e2047681cded7997537"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bitwarden/sdk-sm/releases/download/bws-v2.1.0/bws-aarch64-unknown-linux-gnu-2.1.0.zip"
      sha256 "18253757286e119d450133a87eb463bf8c1ce418ce24c834f4f250d60cba6f9e"
    else
      url "https://github.com/bitwarden/sdk-sm/releases/download/bws-v2.1.0/bws-x86_64-unknown-linux-gnu-2.1.0.zip"
      sha256 "ba8233c3a4aee5d43e3c73bbd04d99e9bc5aba13bbbfd06d89b073abe732b860"
    end
  end

  def install
    bin.install "bws"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bws --version")
  end
end
