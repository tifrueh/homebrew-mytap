cask "geogebra5" do
  version "5.0.649-0"
  sha256 "5769f6ee0e135e18766d2cddc61b817b968a3ea27110c4d6bfa0a74a7067800e"

  url "https://download.geogebra.org/installers/#{version.major_minor}/GeoGebra-MacOS-Installer-withJava-#{version.dots_to_hyphens}.zip"
  name "GeoGebra Classic 5"
  desc "Solve, save and share math problems, graph functions, etc"
  homepage "https://www.geogebra.org/"

  app "GeoGebra.app", target:"GeoGebra 5.app"
end
