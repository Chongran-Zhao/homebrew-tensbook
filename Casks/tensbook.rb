cask "tensbook" do
  version "1.1.2"
  sha256 "bc9b5d898760994c6a8204d3cf517997ee9d7cfb98871bf4518da1001709568f"

  url "https://github.com/Chongran-Zhao/Tensbook/releases/download/v1.1.2/Tensbook-v#{version}-aarch64-apple-darwin.dmg"
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
