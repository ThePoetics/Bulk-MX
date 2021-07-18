$domains = @(Get-Content ./domains.txt)
$domains |resolve-dnsname -Type MX -Server 1.1.1.1 |where {$_.QueryType -eq "MX"} | Select Name,NameExchange | Sort Name | Out-File -FilePath ./output.log