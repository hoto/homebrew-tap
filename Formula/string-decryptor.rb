# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class StringDecryptor < Formula
  desc "Golang CLI template."
  homepage "https://github.com/hoto/string-decryptor"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hoto/string-decryptor/releases/download/1.0.0/string-decryptor_Darwin_x86_64.zip"
      sha256 "7ba58647566f05db74d69145a2a813ea14f956c0445f7d8db7b0f974e55dbdd7"

      def install
        bin.install "string-decryptor"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hoto/string-decryptor/releases/download/1.0.0/string-decryptor_Darwin_arm64.zip"
      sha256 "69b9a834b2b6b54e540f30e6bb05437148b3598ad3007dffa620fd1f9203c748"

      def install
        bin.install "string-decryptor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hoto/string-decryptor/releases/download/1.0.0/string-decryptor_Linux_arm64.zip"
      sha256 "f099e80ef1b7a3802b4ff45a0377fca947c320691000b311e90a81fb396ffb3b"

      def install
        bin.install "string-decryptor"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hoto/string-decryptor/releases/download/1.0.0/string-decryptor_Linux_x86_64.zip"
      sha256 "16791c7a6420825a0f0ec41b579ca966004a16ed6415e9342f33d3ce165ad357"

      def install
        bin.install "string-decryptor"
      end
    end
  end

  test do
    system "#{bin}/string-decryptor --version"
  end
end