class Dejsh < Formula
  desc "Deja vu for your shell: error-fix recall, resume, scripts, plus history audits"
  homepage "https://github.com/victorabuchi/dejsh"
  url "https://github.com/victorabuchi/dejsh/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "92c2a818127d8a375fc6d6f7b2c9579f19a858b9eb5b355e2a186ea092d22bb7"
  license "MIT"

  def install
    bin.install "dejsh"
    generate_completions_from_executable(bin/"dejsh", "completion", shells: [:bash, :zsh, :fish])
  end

  test do
    assert_match "dejsh 0.9.0", shell_output("#{bin}/dejsh --version")
  end
end
