# This file was generated by GoReleaser. DO NOT EDIT.
class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  version "1.23.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/golangci/golangci-lint/releases/download/v1.23.1/golangci-lint-1.23.1-darwin-amd64.tar.gz"
    sha256 "f54049ce414fcb38c321be0420216d3043849f102ea9cd1752fab98262924efa"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/golangci/golangci-lint/releases/download/v1.23.1/golangci-lint-1.23.1-linux-amd64.tar.gz"
      sha256 "fb4ad63d56072219ef2ace58ba2de061ec705055f80c986240a6e403a1f64776"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/golangci/golangci-lint/releases/download/v1.23.1/golangci-lint-1.23.1-linux-arm64.tar.gz"
        sha256 "e15d4122965414adb81ef23dd03a5730df4e32bc7a1d1c2a620377ca9fd34357"
      else
        url "https://github.com/golangci/golangci-lint/releases/download/v1.23.1/golangci-lint-1.23.1-linux-armv6.tar.gz"
        sha256 "1d18b9cd6c5ba134f3276c3daebef645a6f4e11c26a0f3c14ad505a44548bc2a"
      end
    end
  end

  def install
    bin.install "golangci-lint"
    output = Utils.popen_read("#{bin}/golangci-lint completion bash")
    (bash_completion/"golangci-lint").write output
    output = Utils.popen_read("#{bin}/golangci-lint completion zsh")
    (zsh_completion/"_golangci-lint").write output
    prefix.install_metafiles
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end
