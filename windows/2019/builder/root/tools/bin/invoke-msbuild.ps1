#Requires -Version 5.1

Param(
    [Parameter(Mandatory = $true, Position = 1)]
    [Alias("p", "proj")]
    [String] $Project,
    [Alias("t", "tgt")]
    [String] $Target = 'Build',
    [Alias("v")]
    [String] $Verbosity = 'm',
    [Alias("props")]
    [String] $Properties = ''
)

$ErrorActionPreference = 'Stop'

function Get-MsBuild() {
    $p = Get-Command msbuild -ErrorAction SilentlyContinue
    if ($null -ne $p) {
        Write-Debug "Found msbuild at $p"
        return $p
    }
    if (Get-Command vswhere -ErrorAction SilentlyContinue) {
        $p = vswhere -latest -products * -requires Microsoft.Component.MSBuild -find MSBuild\\**\\MSBuild.exe | Select-Object -first 1
        if ($null -ne $p -and (Test-Path $p)) {
            Write-Debug "Found msbuild at $p"
            return $p
        }
    }

    throw "MsBuild not found"
}

$msbuild = Get-MsBuild

# $msbuild | write-host

$opts = @("$Project", '/nologo', "/t:$Target", "/m", "/v:$Verbosity", '/nodeReuse:false')

if ($Properties -ne $null -and $Properties -ne '') {
    $opts += ('/p:' + $Properties + '')
}

& $msbuild $opts
if (!$?) {
    throw "Build error! See above."
}
