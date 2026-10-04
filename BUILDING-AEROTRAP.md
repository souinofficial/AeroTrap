# Building AeroTrap

For Windows x64, install .NET 10 SDK, Rust stable with the MSVC toolchain, and Visual Studio 2022 C++ Build Tools with a Windows SDK.

```powershell
dotnet publish AeroTrap/AeroTrap.csproj -c Release -r win-x64 -p:SelfContained=true -p:AppVersion=1.6.1 -o publish
```

The output is `publish/AeroTrap.exe`. The project folder, assembly and C# namespace use the AeroTrap name.

The GitHub source package includes dependency sources under `libs/` and `backend/virtualdisplay/`. You do not need to initialize separate submodules. Build artifacts and local Git history are excluded.

Extract the ZIP and upload the contents of `AeroTrap-GitHub` to the root of your repository. Use Actions → AeroTrap Windows → Run workflow to create a Windows build. Download the artifact and attach it to a release.

The source package does not contain `WorryUltraSlowed.mp3`. If you have permission to use a recording, you can place it at `AeroTrap/Resources/AeroTrap/WorryUltraSlowed.mp3`. Without that file, the launcher still runs and the character still spins, but hover music is unavailable.

New installations start in English. Users choose their preferred language on the first setup screen; existing installations keep their saved choice.
