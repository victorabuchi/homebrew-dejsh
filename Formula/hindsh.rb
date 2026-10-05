class Hindsh < Formula
  desc "Hindsight for your shell: error-fix recall, resume, scripts, plus history audits"
  homepage "https://github.com/victorabuchi/hindsh"
  url "https://github.com/victorabuchi/hindsh/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "25acaf8186bba36f5aa9f62e1d530c3acbe357d0886fa8cd3a13679fdfb8a72f"
  license "MIT"

  def install
    bin.install "hindsh"
  end

  test do
    assert_match "hindsh 0.5.0", shell_output("#{bin}/hindsh --version")
  end
end
