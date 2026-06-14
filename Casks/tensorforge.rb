cask "tensorforge" do
  version "1.0.0"
  sha256 "6ce5b0c37744c1186c6914335ce3068e33ad90996810f8f4fe8a1e6b64f21bf5"

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
