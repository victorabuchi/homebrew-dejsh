class Strata < Formula
  desc "Gives your shell a memory: error-fix recall, resume, scripts, plus history audits"
  homepage "https://github.com/victorabuchi/strata"
  url "https://github.com/victorabuchi/strata/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "47dde5ca7306b8026affac123cd19cb889e82f28c8e5758a8f728af8a60d9017"
  license "MIT"

  def install
    bin.install "strata"
  end

  test do
    assert_match "strata 0.4.0", shell_output("#{bin}/strata --version")
  end
end
