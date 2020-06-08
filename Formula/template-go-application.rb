# This file was generated by GoReleaser. DO NOT EDIT.
class TemplateGoApplication < Formula
  desc "Navigitae locally cloned repos."
  homepage "https://github.com/hoto/template-go-application"
  version "1.0.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/hoto/template-go-application/releases/download/1.0.0/template-go-application_Darwin_x86_64.zip"
    sha256 "5f511dc44133d70787a0576a9ef97fbfd351df5f0dc2fc262325ca237c869573"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/hoto/template-go-application/releases/download/1.0.0/template-go-application_Linux_x86_64.zip"
      sha256 "a141028e2b9ad133abbaafec9383babd9e6eec797d4543ff6960b96807c7c948"
    end
  end

  def install
    bin.install "template-go-application"
  end

  test do
    system "#{bin}/template-go-application --version"
  end
end