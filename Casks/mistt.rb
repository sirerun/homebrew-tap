cask "mistt" do
  version "0.1.4"
  sha256 "3e37cb9f2295d8baddc24cc3d7ab88d853db863ff89905d6b80f7ba98e705832"
  url "https://github.com/sirerun/mistt-releases/releases/download/v0.1.4/MISTT-0.1.4-arm64.zip"
  name "MISTT"
  desc "Native paired microphone and app-audio transcription relay"
  homepage "https://github.com/sirerun/mistt-releases"
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma
  preflight do
    odie "MISTT requires macOS 14.2 or later." if MacOS.version < MacOSVersion.new("14.2")
  end
  app "MISTT.app"
  caveats "MISTT requires macOS 14.2 or later. User configuration is preserved on uninstall."
end
