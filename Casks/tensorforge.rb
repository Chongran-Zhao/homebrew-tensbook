cask "tensorforge" do
  version "1.0.0"
  sha256 "eec51bdf76ca3aeb680bd90c034f54aed8fc4b3291be686b9c48881e6301db30"

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
