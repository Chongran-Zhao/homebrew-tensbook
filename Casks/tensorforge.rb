cask "tensorforge" do
  version "1.0.0"
  sha256 "30dd9fc181cba97f8b62fba13aa33673a2ae525b48cac31d6308b66645b63071"

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
