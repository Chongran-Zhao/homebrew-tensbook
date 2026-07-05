cask "tensbook" do
  version "1.1.0"
  sha256 "aad9155d0dddaea568c22fcf2be50bcaf521a642184159c2b5e9c7aa09c7ed21"

  url "https://github.com/Chongran-Zhao/Tensbook/releases/download/v1.1.0/Tensbook-v#{version}-aarch64-apple-darwin.dmg"
  name "Tensbook"
  desc "Symbolic math notebook for tensors, calculus, and ODEs"
  homepage "https://github.com/Chongran-Zhao/Tensbook"

  app "Tensbook.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Tensbook.app"],
                   sudo: false
  end
end
