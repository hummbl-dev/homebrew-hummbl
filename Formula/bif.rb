class Bif < Formula
  desc "Batch Ingestion Framework for structured technical knowledge acquisition"
  homepage "https://github.com/hummbl-dev/bif"
  url "https://files.pythonhosted.org/packages/c1/bc/9ee245ec77ee4eed5d2dd2c96e7fef20ad0d877e764826616aea73fcd3b2/hummbl_bif-1.0.0.tar.gz"
  sha256 "edcea88f540b026691108aacd1bf02fb636df81b4035449b3ade8f138228a094"
  license "Apache-2.0"

  depends_on "python@3.11"

  def install
    python3 = Formula["python@3.11"].opt_bin/"python3"
    system python3, "-m", "pip", "install", *std_pip_args(build_isolation: false), "."
  end

  test do
    assert_match "bif", shell_output("#{bin}/bif --help 2>&1", 0)
  end
end
