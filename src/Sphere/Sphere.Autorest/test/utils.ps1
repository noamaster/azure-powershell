function RandomString([bool]$allChars, [int32]$len) {
    if ($allChars) {
        return -join ((33..126) | Get-Random -Count $len | % {[char]$_})
    } else {
        return -join ((48..57) + (97..122) | Get-Random -Count $len | % {[char]$_})
    }
}
$env = @{}
if ($UsePreviousConfigForRecord) {
    $previousEnv = Get-Content (Join-Path $PSScriptRoot 'env.json') | ConvertFrom-Json
    $previousEnv.psobject.properties | Foreach-Object { $env[$_.Name] = $_.Value }
}
# Add script method called AddWithCache to $env, when useCache is set true, it will try to get the value from the $env first.
# example: $val = $env.AddWithCache('key', $val, $true)
$env | Add-Member -Type ScriptMethod -Value { param( [string]$key, [object]$val, [bool]$useCache) if ($this.Contains($key) -and $useCache) { return $this[$key] } else { $this[$key] = $val; return $val } } -Name 'AddWithCache'
function setupEnv() {
    # Preload subscriptionId and tenant from context, which will be used in test
    # as default. You could change them if needed.
    #Select-AzSubscription -SubscriptionId d1cd48f9-b94b-4645-9632-634b440db393 -Tenant 72f988bf-86f1-41af-91ab-2d7cd011db47

    $env.SubscriptionId = (Get-AzContext).Subscription.Id
    $env.Tenant = (Get-AzContext).Tenant.Id

    $env.resourceGroup = 'Sphere-test'
    $env.region = 'eastus'
    $env.globalLocation = 'Global'
    $env.firstCatalog = 'firstCatalog'
    $env.secondCatalog = 'secondCatalog'
    $env.firstProduct = 'Product1' #main product
    $env.secondProduct = 'Product2' #Test device assign product
    $env.anotherProduct = 'Product3'
    $env.DevDeviceGroup = 'Development'
    $env.TestDeviceGroup = 'Field Test'
    $env.ProdDeviceGroup = 'Production'
    $env.anotherDeviceGroup = 'DeviceGroupTrans'

    $env.deviceID1 = '9821102AB4BD238196247124795853BCEC5F1150CD6F802A22EB3713C5B945EAD6DFC4C2354CF89E20842769DBDEB013F6F5F94D604399A0D03ADE424207234B'
    $env.deviceID2 = 'B15332603BA55FB52B00FEC8549FDAA46B7FB6BA35694BC8943131CCB4B302846D224580A27880A2996B9FD4F1B2699400B1627059B6A90D67DD29E2984EE147'
    $env.deviceID3 = '5D257FBCF76A5853832122D9B0E2410DAA1438E3C1CDE005162A837A7535C08973CC819A50CF8EB724FFC88DADA06B40BEE6010E82A8F84D2FEF0FC263061D67'
    $env.deviceID4 = 'DBB0E0CB8BD961A6129096E1E8A1375AC1FA274F030C08161B37AE3BC5A94F443BDB628CF257BC5BC810D8768C03B6F5CA301A35CD0169F56A49624255964560'

    # azsphere image-package show --image-package .\test\imagefile\AzureSphereBlink1.imagepackage
    $env.imageID1 = '14a6729e-5819-4737-8713-37b4798533f8'
    # ErrorReporting.imagepackage
    $env.imageID2 = 'd1d0ad2a-5054-4c88-897c-36fa01684dd0'
    # GPIO_HighLevelApp.imagepackage
    $env.imageID3 = 'a04f0a91-b369-4249-a47d-28c118e2cb3b'
    # HelloWorld_HighLevelApp.imagepackage
    $env.imageID4 = '9c6b0d1a-3f78-4382-86dd-371aabc3e006'

    $imagePath1 = Join-Path $PSScriptRoot '.\imagefile\AzureSphereBlink1.imagepackage'
    $imagePath2 = Join-Path $PSScriptRoot '.\imagefile\ErrorReporting.imagepackage'
    $imagePath3 = Join-Path $PSScriptRoot '.\imagefile\GPIO_HighLevelApp.imagepackage'
    $imagePath4 = Join-Path $PSScriptRoot '.\imagefile\HelloWorld_HighLevelApp.imagepackage'

    $env.imagecontext1 = [system.io.file]::ReadAllBytes($imagePath1)
    $env.imagecontext2 = [system.io.file]::ReadAllBytes($imagePath2)
    $env.imagecontext3 = [system.io.file]::ReadAllBytes($imagePath3)
    $env.imagecontext4 = [system.io.file]::ReadAllBytes($imagePath4)

    Write-Host 'Start to create test resource group' $env.resourceGroup
    try {
        Get-AzResourceGroup -Name $env.resourceGroup -ErrorAction Stop
        Write-Host 'Get created group'
    } catch {
        New-AzResourceGroup -Name $env.resourceGroup -Location $env.region
    }

    # For any resources you created for test, you should add it to $env here.
    $envFile = 'env.json'
    if ($TestMode -eq 'live') {
        $envFile = 'localEnv.json'
    }
    set-content -Path (Join-Path $PSScriptRoot $envFile) -Value (ConvertTo-Json $env)
}
function cleanupEnv() {
    # Clean resources you create for testing
}

