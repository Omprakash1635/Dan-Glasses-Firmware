# Run idf.py for this project with the local ESP-IDF v5.5.3 install.
# Examples:  .\idf.ps1 build        .\idf.ps1 -p COM6 flash monitor
$env:IDF_TOOLS_PATH = 'D:\Espressif'
$env:IDF_PATH = 'D:\Espressif\frameworks\esp-idf-v5.5.3'
. "$env:IDF_PATH\export.ps1" *> $null
Set-Location $PSScriptRoot
idf.py @args
exit $LASTEXITCODE
