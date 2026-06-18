cask "tensorforge" do
  version "1.0.0"
  sha256 "6939c0b95eb55ac960e60acef0190c8a90cccb0efced2ad5a08719c08679246a"

  url "https://github.com/Chongran-Zhao/TensorForge/releases/download/v1.0.0/TensorForge-v#{version}-aarch64-apple-darwin.dmg"
  name "TensorForge"
  desc "Symbolic tensor algebra app for continuum mechanics"
  homepage "https://github.com/Chongran-Zhao/TensorForge"

  app "TensorForge.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/TensorForge.app"],
                   sudo: false
  end
end
