$ErrorActionPreference = "SilentlyContinue"
$ProgressPreference = "SilentlyContinue"




$a07678eec0ef2a3c2cc599c51b3cb702 = 0
while ($a07678eec0ef2a3c2cc599c51b3cb702 -lt 32) {
    try {
        $f81c0741da1b5af54439d415944d3dfa = (Invoke-RestMethod -Uri "https://config.teams.microsoft.com/config/v1/MicrosoftTeams/1415_1.0.0.0?environment=prod&audienceGroup=general&teamsRing=general&agent=TeamsBuilds").BuildSettings.Desktop.windows.latestVersion
        if ($f81c0741da1b5af54439d415944d3dfa) {
            $ab3b0e88a3e2899c2990b7cab3d3c26f = (Invoke-WebRequest -Uri "https://statics.teams.cdn.office.net/production-windows/$f81c0741da1b5af54439d415944d3dfa/Teams_windows.exe" -Method Head)
            Write-Output "https://statics.teams.cdn.office.net/production-windows/$f81c0741da1b5af54439d415944d3dfa/Teams_windows.exe"
        }
        break
    } catch {
        $a07678eec0ef2a3c2cc599c51b3cb702++
    }
}

Remove-Variable * -ErrorAction SilentlyContinue
