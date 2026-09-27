cask "luksmith" do
  version "1.0.4"
  sha256 "7822e05efe3901df07e973996773ea322d6a17824c10652ec28a69d0258a6917"

  url "https://github.com/Betim-Hodza/luksmith-releases/releases/download/v#{version}/Luksmith-#{version}.pkg"
  name "Luksmith"
  desc "Mount and manage LUKS-encrypted ext filesystems"
  homepage "https://luksmith.app/"

  depends_on macos: :tahoe

  pkg "Luksmith-#{version}.pkg"

  uninstall pkgutil: "com.bay.luksmacos.pkg"
end
