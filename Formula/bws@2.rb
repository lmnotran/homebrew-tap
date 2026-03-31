class BwsAT2 < Formula
  desc "Bitwarden Secrets Manager CLI"
  homepage "https://bitwarden.com/help/secrets-manager-cli/"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bitwarden/sdk-sm/releases/download/bws-v2.0.0/bws-aarch64-apple-darwin-2.0.0.zip"
      sha256 "5bbb43fcec75528c5d78e4dfdb22b6b368ecdff7020bcd853911564587f61f8a"
    else
      url "https://github.com/bitwarden/sdk-sm/releases/download/bws-v2.0.0/bws-x86_64-apple-darwin-2.0.0.zip"
      sha256 "2f33fa7da3d7c3ee1838f3c5f3e8a47051e3fdb01c45701f6844fa0b344e92d1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bitwarden/sdk-sm/releases/download/bws-v2.0.0/bws-aarch64-unknown-linux-gnu-2.0.0.zip"
      sha256 "49a250d4f3121c67155c195afbad4ced90a92a878c3256ca091276b82e7ad131"
    else
      url "https://github.com/bitwarden/sdk-sm/releases/download/bws-v2.0.0/bws-x86_64-unknown-linux-gnu-2.0.0.zip"
      sha256 "a8340ce01da609200441f2eca0e591173e124f012c88a16afda574279c052013"
    end
  end

  def install
    bin.install "bws"
  end

  test do
    assert_match "bws #{version}", shell_output("#{bin}/bws --version")
  end
end
