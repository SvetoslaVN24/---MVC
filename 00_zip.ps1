# Get the current directory
$sourcePath = Get-Location
$rarFile = Join-Path $sourcePath "project.zip"

# Path to WinRAR (change if needed)
$winrar = "winrar.exe"

# Build exclusion list - folders and specific files
$exclusions = @(
    "-x.git\*",
    "-xvendor\*",
    "-xnode_modules\*",
    "-x.gitattributes",
    "-x.gitignore"
)

# WinRAR command args (as an array)
$args = @(
    "a",         # Add to archive
    "-r",        # Recurse subfolders
    "-ep1"       # Exclude base folder from paths
    $rarFile,    # Output file
    "*",         # Include all files/folders
    $exclusions  # Exclude defined paths
)

# Run it
& $winrar @args

Write-Host "`n✅ Done! Archive created at: $rarFile`n(Excluded folders will not show up at all if fully excluded.)"
