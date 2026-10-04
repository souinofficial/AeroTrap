{
  lib,
  appimageTools,
  fetchurl,
  makeDesktopItem,
}:

let
  version = "2.0.2";

  src = fetchurl {
    url = "https://github.com/souinofficial/AeroTrap/releases/download/v${version}/AeroTrap-linux-x64.AppImage";
    hash = "sha256-KajUNB3vgzslBOTvL/GWTwRLZmbc+XKvtkyRQAz0ktE=";
  };

  appimageContents = appimageTools.extractType2 {
    inherit version src;
    pname = "aerotrap";
  };

  desktopItem = makeDesktopItem {
    name = "aerotrap";
    desktopName = "AeroTrap";
    comment = "A cross-platform Roblox bootstrapper, focused on performance and customization.";
    exec = "aerotrap %u";
    icon = "aerotrap";
    categories = [ "Game" ];
    mimeTypes = [
      "x-scheme-handler/roblox"
      "x-scheme-handler/roblox-player"
      "x-scheme-handler/roblox-studio"
      "x-scheme-handler/roblox-studio-auth"
    ];
  };
in
appimageTools.wrapType2 {
  pname = "aerotrap";
  inherit version src;

  extraPkgs = pkgs: [ pkgs.icu ];

  extraInstallCommands = ''
    install -Dm644 ${desktopItem}/share/applications/aerotrap.desktop \
        $out/share/applications/aerotrap.desktop

    install -Dm644 ${appimageContents}/usr/share/icons/hicolor/512x512/apps/aerotrap.png \
        $out/share/icons/hicolor/512x512/apps/aerotrap.png
  '';

  meta = {
    description = "A cross-platform Roblox bootstrapper, focused on performance and customization.";
    homepage = "https://github.com/souinofficial/AeroTrap";
    license = lib.licenses.mpl20;
    platforms = [ "x86_64-linux" ];
  };
}
