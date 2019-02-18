# This file was generated by GoReleaser. DO NOT EDIT.
class GolangciLint < Formula
  desc "Fast linters runner for Go."
  homepage "https://golangci.com"
  url "https://github.com/golangci/golangci-lint/releases/download/v1.15.0/golangci-lint-1.15.0-darwin-amd64.tar.gz"
  version "1.15.0"
  sha256 "083941efa692bfe3c29ba709964e9fe5896889316d51813e523157c96c3153e0"

  def install
    bin.install "golangci-lint"
  end

  test do
    system "#{bin}/golangci-lint --version"
  end
end
