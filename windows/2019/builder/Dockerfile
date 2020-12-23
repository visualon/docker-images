# escape=`

# Use the latest Windows Server Core image with .NET Framework 4.8.
FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019

LABEL maintainer="Michael Kriese <michael.kriese@visualon.de>" `
    org.opencontainers.image.authors="Michael Kriese <michael.kriese@visualon.de>" `
    org.opencontainers.image.licenses="MIT" `
    org.opencontainers.image.source="https://github.com/VisualOn/docker-images" `
    org.opencontainers.image.url="https://github.com/VisualOn/docker-images"


# Restore the default Windows shell for correct batch processing.
SHELL ["cmd", "/S", "/C"]

# Install Build Tools
RUN `
	# Install VS Build Tools
	curl -fSLo vs_BuildTools.exe https://aka.ms/vs/16/release/vs_buildtools.exe`
    && setx /M DOTNET_SKIP_FIRST_TIME_EXPERIENCE 1 `
	&& vs_buildtools.exe --quiet --wait --norestart --nocache `
    --installPath C:\BuildTools `
    --add Microsoft.VisualStudio.Workload.WebBuildTools `
    --add Microsoft.VisualStudio.Workload.OfficeBuildTools `
    && powershell -Command "if ($err = dir $Env:TEMP -Filter dd_setup_*_errors.log | where Length -gt 0 | Get-Content) { throw $err }" `
    && del vs_BuildTools.exe `
    `
	# Cleanup
    && (for /D %i in ("%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\*") do rmdir /S /Q "%i") `
    && (for %i in ("%ProgramFiles(x86)%\Microsoft Visual Studio\Installer\*") do if not "%~nxi" == "vswhere.exe" del "%~i") `
    && echo clean temp `
    && powershell -Command "Get-ChildItem $Env:TEMP | Remove-Item -Force -Recurse"

RUN powershell -Command "iwr -useb get.scoop.sh | iex"
RUN `
	scoop config shim kiennq `
	&& scoop install git nodejs-lts pwsh `
	`
	&& git config --system --unset credential.helper `
	&& git config --global --unset credential.helper `
	# Cleanup
	&& pwsh -Command "Get-ChildItem ~\scoop\cache | Remove-Item"

RUN npm i -g yarn

RUN `
	setx /M HOME %USERPROFILE% `
	&& dotnet --info > nul

ENV POWERSHELL_TELEMETRY_OPTOUT="1"
ENV DOTNET_CLI_TELEMETRY_OPTOUT="1"
# Define the entry point for the docker container.
# This entry point starts the developer command prompt and launches the PowerShell shell.
ENTRYPOINT ["C:\\BuildTools\\Common7\\Tools\\VsDevCmd.bat", "&&", "pwsh.exe", "-NoLogo", "-NoExit", "-ExecutionPolicy", "Bypass", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]
