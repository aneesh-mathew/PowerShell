# Define the Desktop path
$desktopPath = [System.Environment]::GetFolderPath("Desktop")

# Define folder and file paths
$folderPath = Join-Path $desktopPath "TestFolder"
$filePath = Join-Path $folderPath "temp.txt"

# Create the folder if it doesn't exist
if (!(Test-Path $folderPath)) {
    New-Item -ItemType Directory -Path $folderPath -Force
}

# Create the text file and write content
Set-Content -Path $filePath -Value "text file created."

# Confirmation message
Write-Output "Folder and file created successfully!"
