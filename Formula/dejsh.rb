class Dejsh < Formula
  desc "Deja vu for your shell: error-fix recall, resume, scripts, plus history audits"
  homepage "https://github.com/victorabuchi/dejsh"
  url "https://github.com/victorabuchi/dejsh/archive/refs/tags/v0.8.0.tar.gz"
  sha256 "644e1dcc29bff8bfbf712d81e489dbac6fcc7f0e20b65e415246a97e71be1ef5"
  license "MIT"

  def install
    bin.install "dejsh"
    generate_completions_from_executable(bin/"dejsh", "completion", shells: [:bash, :zsh, :fish], shell_parameter_format: :arg)
  end

  test do
    assert_match "dejsh 0.8.0", shell_output("#{bin}/dejsh --version")
  end
end
