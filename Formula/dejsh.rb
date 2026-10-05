class Dejsh < Formula
  desc "Deja vu for your shell: error-fix recall, resume, scripts, plus history audits"
  homepage "https://github.com/victorabuchi/dejsh"
  url "https://github.com/victorabuchi/dejsh/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "fdb628e7e6cdf147092c116a8e3e4cce1343c5744019196fbb8f5c05ba1cb25c"
  license "MIT"

  def install
    bin.install "dejsh"
  end

  test do
    assert_match "dejsh 0.7.0", shell_output("#{bin}/dejsh --version")
  end
end
