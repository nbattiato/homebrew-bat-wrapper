class BatWrapper < Formula
  desc "bat wrapper for bat cli"
  homepage "https://docs.mulesoft.com/api-functional-monitoring/bat-top"
  url "https://repository-master.mulesoft.org/nexus/content/repositories/releases/com/mulesoft/bat/bat-wrapper/1.1.14/bat-wrapper-1.1.14.zip"
  sha256 "77b9413bc3cc875bf67f7833e5d83b3a34452a7b283053d0bc7a15ab24f45e69"
  version "1.1.14"

  depends_on "openjdk"
  uses_from_macos "unzip" => :build

  def install
    # Create a temporary directory for unzipping
    mkdir_p buildpath/"bat-wrapper"

    # Unzip the downloaded zip file
    system "unzip", "-qq", "-d", buildpath/"bat-wrapper", cached_download

    # Install unzipped files to the libexec directory
    libexec.install Dir[buildpath/"*"]

    # Create a symlink for the executable script
    bin.install_symlink libexec/"bin/bat"
  end

  test do
    system "false"
  end
end
