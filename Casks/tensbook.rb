cask "tensbook" do
  version "1.1.1"
  sha256 "70b9349627b5fc31ce043fe2f7d07eae0618b11a8618135e787eed3a619bb6a3"

  url "https://github.com/Chongran-Zhao/Tensbook/releases/download/v1.1.1/Tensbook-v#{version}-aarch64-apple-darwin.dmg"
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
