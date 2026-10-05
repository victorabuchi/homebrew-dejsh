class Dejsh < Formula
  desc "Deja vu for your shell: error-fix recall, resume, scripts, plus history audits"
  homepage "https://github.com/victorabuchi/dejsh"
  url "https://github.com/victorabuchi/dejsh/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "fc1c27116121e85e6981486467027beb2457cbc4dbd1b6a469495775a35fff6f"
  license "MIT"

  def install
    bin.install "dejsh"
  end

  test do
    assert_match "dejsh 0.7.1", shell_output("#{bin}/dejsh --version")
  end
end
