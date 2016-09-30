﻿#Add the SharePoint PowerShell Snap-In
Add-PSSnapin Microsoft.SharePoint.PowerShell -ErrorAction SilentlyContinue 

#FileName
$outfile = "ExternalLists"
$fileName = ".\logs\$outfile-" + $(Get-Date -Format "yyyyMMddHHmmss") + ".csv"

#Output Array
[PSObject[]]$resultsarray = @()

foreach($webApp in $WebApplications)
                    foreach ($list in $web.Lists){
                        if ($list.hasexternaldatasource){
                            $global:resultsarray += $outObject
                #Write-Host "Exception Type: $($_.Exception.GetType().FullName)" -ForegroundColor Red
                Write-Host "Exception Message: $($_.Exception.Message)" -ForegroundColor Red

$resultsarray | Export-csv $fileName -notypeinformation





#Get-SPWebApplication http://intranet.doghousetoys.com | Select –ExpandProperty Sites |
# Select -ExpandProperty AllWebs | Select -ExpandProperty Lists |
# where {$_.hasexternaldatasource -eq $true} | Format-Table $a -AutoSize


 