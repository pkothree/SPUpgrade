﻿if ((Get-PSSnapin "Microsoft.SharePoint.PowerShell" -ErrorAction SilentlyContinue) -eq $null) 
[PSObject[]]$global:resultsarray = @()
foreach($webApp in $WebApplications)
                            if ($isUsingInfoPath)
                            {
                                Write-Host "Found a form on: $($webApp.DisplayName) $($list.Title)"
                                $outObject = new-object PSObject
                                $outObject | add-member -membertype NoteProperty -name "Notes" -Value ""
                                $global:resultsarray += $outObject
                #Write-Host "Exception Type: $($_.Exception.GetType().FullName)" -ForegroundColor Red
                Write-Host "Exception Message: $($_.Exception.Message)" -ForegroundColor Red