cask "tensorforge" do
  version "1.0.0"
  sha256 "ccc534ed4a3c35a0d5b14b4fe0f3d230157aba80555580a58ff974815de18e1d"

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
