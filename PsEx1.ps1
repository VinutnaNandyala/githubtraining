<# $A = Get-ChildItem D:vinu\*.txt
format-wide -InputObject $A #>

new-item -path 'D:\vinu\vinu.txt' -itemtype file

# $location = Get-Location