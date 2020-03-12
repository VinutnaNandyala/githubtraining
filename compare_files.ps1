$Folder1 = "C:\Users\804175\Documents\logs"
$Folder2 = "D:\logs"
$Folder3 = "D:\Vinu"

$Folder1files = Get-ChildItem -Path $Folder1 -Recurse
$Folder2files = Get-ChildItem -Path $Folder2 -Recurse
$Filediff =Compare-Object $Folder1files $Folder2Files -Property Name, Length, LastWriteTime -passthru 

$Filediff | foreach {

 $copyparams = @{
     'Path' = $_.InputObject.Fullname
}
 
 if ($_.SideIndicator -eq '<=')
 {
   $copyparams.Destination = $Folder3
 }
 
 }
 Copy-Item @copyparams
}

