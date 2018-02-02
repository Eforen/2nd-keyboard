Param ( 
    [Parameter(Mandatory=$true, Position=0)]
    [string[]]$files,
    [string]$outputPath = (Get-Location)
)

[System.Reflection.Assembly]::LoadWithPartialName('System.Drawing')  | Out-Null

foreach($file in $files){
    $baseName = [System.IO.Path]::GetFileNameWithoutExtension($file)
    Write-Progress "Extracting Icon" $baseName
    [System.Drawing.Icon]::ExtractAssociatedIcon($file).ToBitmap().Save("$outputPath\$BaseName.ico")
}