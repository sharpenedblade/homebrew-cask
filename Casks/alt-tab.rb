cask 'alt-tab' do
  version '4.1.7'
  sha256 '357b37eea21329173a8e5416a80dadc508294003beae743a24f12507213cb729'

  url "https://github.com/lwouis/alt-tab-macos/releases/download/v#{version}/AltTab-#{version}.zip"
  appcast 'https://github.com/lwouis/alt-tab-macos/releases.atom'
  name 'alt-tab'
  homepage 'https://github.com/lwouis/alt-tab-macos'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'AltTab.app'

  uninstall quit: 'com.lwouis.alt-tab-macos'

  zap trash: [
               '~/Library/Caches/com.lwouis.alt-tab-macos',
               '~/Library/Cookies/com.lwouis.alt-tab-macos.binarycookies',
               '~/Library/Preferences/com.lwouis.alt-tab-macos.plist',
             ]
end
