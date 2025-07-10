################################################################################################################################
function ESPSPIFFSuploadfile() {
    param (
        [Parameter(Mandatory = $true)][String] $UploadURL, 
        [Parameter(Mandatory = $true)][String] $File, 
        [Parameter(Mandatory = $false)][String] $Destinaionfilename 
    )
    if ([string]::IsNullOrWhiteSpace($Destinaionfilename)) { $Destinaionfilename = "/$(Split-Path $File -leaf)" }     
    
    $FilePath = Get-Item -Path $File;
    $fileBytes = [System.IO.File]::ReadAllBytes($FilePath);
    $fileEnc = [System.Text.Encoding]::GetEncoding('iso-8859-1').GetString($fileBytes);
    $boundary = [System.Guid]::NewGuid().ToString(); 
    $EOL = "`r`n";

    $bodyLines = ( 
        "--$boundary",
        "Content-Disposition: form-data; name=`"data`"; filename=`"$Destinaionfilename`"",
        "Content-Type: application/octet-stream",
        "",
        $fileEnc,
        "--$boundary", 
        "",
        "$EOL" 
    ) -join $EOL
    Invoke-RestMethod -Uri $UploadURL -Method Post -ContentType "multipart/form-data; boundary=`"$boundary`"" -Body $bodyLines 
}
################################################################################################################################

$URI = "ESP-NAS-12E.local"
$URI = "ESP-NAS-ESP.local"
$URI = "ESP-NAS-S2.local"
$URI = "ESP-NAS-S3.local"
$URI = "ESP-NAS-C3.local"
$URI = "ESP-NAS-C6.local"

ESPSPIFFSuploadfile "$URI/edit" 'ddd.png' '/test/d2.png'
Write-Host "responce = $a"
# create a test file 
"Testing $(get-date) " + [System.Guid]::NewGuid().ToString() > 'test.txt'
# Upload a file
ESPSPIFFSuploadfile "$URI/edit" 'test.txt' '/test2.txt'
# Dir 
Invoke-RestMethod -Uri "$URI/list?dir=/" -Method get
# create file
Invoke-RestMethod -Uri "$URI/edit?path=/Log.txt" -Method put
# Read the file
Invoke-RestMethod -Uri "$URI/Log.txt" -Method get
# Delete file
Invoke-RestMethod -Uri "$URI/Log.txt" -Method delete
# Dir /test 
Invoke-RestMethod -Uri "$URI/list?dir=/test" -Method get
Invoke-WebRequest -Uri "$URI/list?dir=/" -Method get
Invoke-RestMethod -Uri "$URI/edit?path=/test.txt" -Method delete
# Create dirctory
Invoke-RestMethod -Uri "$URI/edit?path=/test" -Method put



