class Dejsh < Formula
  desc "Deja vu for your shell: error-fix recall, resume, scripts, plus history audits"
  homepage "https://github.com/victorabuchi/dejsh"
  url "https://github.com/victorabuchi/dejsh/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "d84587025117f0c0ab6df75ea4e847c222f6289a2ecfa94b5ee3fdc20fb21373"
  license "MIT"

  def install
    bin.install "dejsh"
  end

  test do
    assert_match "dejsh 0.6.0", shell_output("#{bin}/dejsh --version")
  end
end
