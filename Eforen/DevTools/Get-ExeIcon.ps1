Param ( 
    [Parameter(Mandatory=$true, Position=0)]
    [string[]]$files,
    [string]$outputPath = (Get-Location),
    [int] $size = 128,
    [ValidateSet("ico", "bmp", "png", "jpg", "gif", "emf", "exif", "icon", "tiff", "wmf")]
    [string] $type = "png"
)

[System.Reflection.Assembly]::LoadWithPartialName('System.Drawing')  | Out-Null

foreach($file in $files){
    $baseName = [System.IO.Path]::GetFileNameWithoutExtension($file)
    Write-Progress "Extracting Icon" $baseName
    Export-Icon  -Path $file -Size $size -Type $type -Directory $outputPath
    #[System.Drawing.Icon]::ExtractAssociatedIcon($file).ToBitmap().Save("$outputPath\$BaseName.ico")
}