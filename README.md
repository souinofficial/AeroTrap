<h1 align="center">AeroTrap</h1>
<p align="center">A customized Roblox launcher for Windows, built on AeroTrap.</p>
<p align="center">
  <img src="https://img.shields.io/badge/version-1.6.1-A7C080" alt="1.6.1">
  <img src="https://img.shields.io/badge/Windows-x64-2D353B" alt="Windows x64">
  <img src="https://img.shields.io/badge/.NET-10-596F2E" alt=".NET 10">
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MPL--2.0-475258" alt="MPL 2.0"></a>
</p>
<p align="center"><a href="https://github.com/souinofficial/AeroTrap/releases">Download</a> · <a href="#getting-started">Getting started</a> · <a href="#features">Features</a> · <a href="BUILDING-AEROTRAP.md">Building</a></p>

## Getting started

1. Download and extract the Windows x64 package from Releases.
2. Open `AeroTrap.exe`. The .NET 10 runtime is included.
3. The first-run setup opens in English. Choose your preferred language on the first screen, then complete setup.
4. Click **Play** in the main menu. Opening the menu does not automatically start Roblox.

Your language choice is saved and can be changed later in Appearance settings. Existing installations keep their selected language. AeroTrap also creates Windows Search shortcuts. Close all AeroTrap windows before updating.

## Features

### Appearance

- Everforest / Sage as the default palette, with Mint, Emerald and Monochrome alternatives.
- Light, dark and Windows system theme modes.
- Animated launcher with an embedded nebula GIF.
- Circular character portrait that spins on hover.
- English and Turkish interface options, with language selection during setup.

### Roblox and settings

- Launch Roblox Player or Studio.
- AeroTrap's FastFlag, mod, integration, channel, region and shortcut settings.
- **Global Settings → Higher FPS, same graphics:** sets the frame rate cap to 240 without changing graphics quality, textures, lighting or effects.
- Windows notification-area icon with Open, Settings and Exit actions.

A higher frame rate cap does not make your hardware faster. It allows capable hardware to exceed a 60 FPS cap; results depend on your device and the game. No measured FPS improvement is claimed. Roblox restricts some local FastFlags. [Roblox frame rate setting](https://devforum.roblox.com/t/introducing-the-maximum-framerate-setting/2995965/) · [FastFlag allowlist](https://devforum.roblox.com/t/allowlist-for-local-client-configuration-via-fast-flags/3966569/)

### Discord Rich Presence

- Activity, current page and elapsed time through the AeroTrap Discord application.
- AeroTrap logo by default; choose a character image or direct GIF URL in settings.
- In Developer Portal → Rich Presence → Art Assets, use `aerotrap` for the logo and `aero_character` for the character.
- Animated images need a publicly accessible HTTPS GIF URL. The Discord activity card does not play music.

## Building

See [the build guide](BUILDING-AEROTRAP.md). The included GitHub Actions workflow produces a Windows build artifact. This source package has not been published to a remote repository.

The copyrighted `WorryUltraSlowed.mp3` recording is excluded from the GitHub source package. Builds from that package retain the hover animation; hover music requires a separately supplied recording that you have permission to use.

## License and credits

AeroTrap is an independent customization of [Froststrap](https://github.com/Froststrap/Froststrap). Original copyright notices, [LICENSE](LICENSE) and [LICENSES](LICENSES) are preserved. Source code is licensed under MPL-2.0; third-party images and recordings are not relicensed under it.

- Palette: [Everforest](https://github.com/sainnhe/everforest/blob/master/palette.md).
- Nebula animation: [NASA / ESA / J. DePasquale (STScI)](https://science.nasa.gov/asset/hubble/ic-63-ghost-nebula-optical-to-infrared-animation/).
- Character artwork was supplied by the project owner.
