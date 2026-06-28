class Arbiter < Formula
  desc "Agent-aware code quality scoring for multi-agent codebases"
  homepage "https://github.com/hummbl-dev/arbiter"
  url "https://files.pythonhosted.org/packages/32/21/f3f92d200e864ac3e5a6e64733eafc3d75624118fdc0dcb740f00c237045/arbiter_score-1.0.0.tar.gz"
  sha256 "39dc2730d12c8374905223567c0a80a59a8c1e6a746b5aa79c59a279e5a81c69"
  license "Apache-2.0"

  depends_on "python@3.11"

  def install
    python3 = Formula["python@3.11"].opt_bin/"python3"
    system python3, "-m", "pip", "install", *std_pip_args(build_isolation: false), "."
  end

  test do
    assert_match "arbiter", shell_output("#{bin}/arbiter --help 2>&1", 0)
  end
end
