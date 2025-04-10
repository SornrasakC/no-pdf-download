# PowerShell script to package the 'No PDF Download' extension for distribution

# Define the source directory (containing manifest.json)
$sourceDir = ".\app"

# Define the output zip file name
$zipFileName = "no-pdf-download-v3.zip"

# Define the path for the output zip file (in the workspace root)
$destinationPath = ".\$zipFileName"

# Check if the destination file already exists and remove it
if (Test-Path $destinationPath) {
    Remove-Item $destinationPath
    Write-Host "Removed existing archive: $destinationPath"
}

# Create the zip archive
Compress-Archive -Path "$sourceDir\*" -DestinationPath $destinationPath -Force

Write-Host "Extension successfully packaged into: $destinationPath" 