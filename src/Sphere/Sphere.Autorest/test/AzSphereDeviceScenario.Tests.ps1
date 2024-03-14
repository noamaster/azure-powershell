if(($null -eq $TestName) -or ($TestName -contains 'AzSphereDeviceScenario'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'AzSphereDeviceScenario.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'AzSphereDeviceScenario' {
    It 'CreateGetCatalog' {
        {
            Write-Host 'Start to create test catalog' $env.firstCatalog
            $catalogA = New-AzSphereCatalog -Name $env.firstCatalog -ResourceGroupName $env.resourceGroup -Location $env.globalLocation
            $catalogA.Name | Should -Be $env.firstCatalog

            Write-Host 'Get test resource group ViaIdentity'
            $result = Get-AzSphereCatalog -InputObject $catalogA
            $result.Name | Should -Be $env.firstCatalog
        } | Should -Not -Throw
    }

    It 'UpdateCatalog' {
        {
            Update-AzSphereCatalog -Name $env.firstCatalog -ResourceGroupName $env.resourceGroup -Tag @{"123"="abc"}
        } | Should -Not -Throw
    }

    It 'CreateProduct' {
        {
            $prodObject = New-AzSphereProduct -CatalogName $env.firstCatalog -Name $env.firstProduct -ResourceGroupName $env.resourceGroup
            $prod1 = Get-AzSphereProduct -InputObject $prodObject
            $prod1.Name | Should -Be $env.firstProduct

            New-AzSphereProduct -CatalogName $env.firstCatalog -Name $env.secondProduct -ResourceGroupName $env.resourceGroup
        } | Should -Not -Throw
    }

    It 'ListProduct' {
        {
            $listProd = Get-AzSphereProduct -CatalogName $env.firstCatalog -ResourceGroupName $env.resourceGroup
            $listProd.Count | Should -Be 2
        } | Should -Not -Throw
    }

    It 'GetProduct' {
        {
            $prod1 = Get-AzSphereProduct -CatalogName $env.firstCatalog -Name $env.firstProduct -ResourceGroupName $env.resourceGroup
            $prod1.Name | Should -Be $env.firstProduct
        } | Should -Not -Throw
    }

    It 'GenerateDefaultAndListDeviceGroup' {
        {
            New-AzSphereProductDefaultDeviceGroup -CatalogName $env.firstCatalog -ProductName $env.firstProduct -ResourceGroupName $env.resourceGroup
            
            Write-Host 'List test device group to verify'
            $listDeviceGroup = Get-AzSphereDeviceGroup -CatalogName $env.firstCatalog -ProductName $env.firstProduct -ResourceGroupName $env.resourceGroup
            $listDeviceGroup.Count | Should -BeGreaterOrEqual 5
        } | Should -Not -Throw
    }

    It 'ListGroupInCatalog' {
        {
            $listDeviceGroup = Get-AzSphereCatalogDeviceGroup -ResourceGroupName $env.resourceGroup -CatalogName $env.firstCatalog
            $listDeviceGroup.Count | Should -BeGreaterOrEqual 5
        } | Should -Not -Throw
    }

    It 'GetDevDeviceGroup' {
        {
            $group = Get-AzSphereDeviceGroup -Name $env.DevDeviceGroup -ProductName $env.firstProduct -CatalogName $env.firstCatalog -ResourceGroupName $env.resourceGroup
            $group.Name | Should -Be $env.DevDeviceGroup
        } | Should -Not -Throw
    }

    It 'CreateDevice1' {
        {
            New-AzSphereDevice -CatalogName $env.firstCatalog -GroupName $env.DevDeviceGroup -Name $env.deviceID1 -ProductName $env.firstProduct -ResourceGroupName $env.resourceGroup
        } | Should -Not -Throw
    }

    It 'GetDevice' {
        {
            $device = Get-AzSphereDevice -ResourceGroupName $env.resourceGroup -CatalogName $env.firstCatalog -ProductName $env.firstProduct -GroupName $env.DevDeviceGroup -Name $env.deviceID1
            $device.Name | Should -Be $env.deviceID1
        } | Should -Not -Throw
    }

    It 'ClaimDevice23' {
        {
            Invoke-AzSphereClaimDeviceGroupDevice -ResourceGroupName $env.resourceGroup -CatalogName $env.firstCatalog -ProductName $env.firstProduct -DeviceGroupName $env.TestDeviceGroup -DeviceIdentifier $env.deviceID3,$env.deviceID2
        } | Should -Not -Throw
    }

    It 'CreateDevice4' {
        {
            New-AzSphereDeviceGroup -Name $env.DevDeviceGroup -ProductName $env.secondProduct -CatalogName $env.firstCatalog -ResourceGroupName $env.resourceGroup

            New-AzSphereDevice -CatalogName $env.firstCatalog -GroupName $env.DevDeviceGroup -Name $env.deviceID4 -ProductName $env.secondProduct -ResourceGroupName $env.resourceGroup
        } | Should -Not -Throw
    }

    It 'GenerateDeviceImage' {
        {
            New-AzSphereDeviceCapabilityImage -CatalogName $env.firstCatalog -DeviceGroupName $env.firstDeviceGroup -DeviceName $env.deviceID1 -ProductName $env.firstProduct -ResourceGroupName $env.resourceGroup -Capability 'ApplicationDevelopment'
        } | Should -Not -Throw
    }

    It 'ListDeviceInsight' {
        {
            Get-AzSphereCatalogDeviceInsight -ResourceGroupName $env.resourceGroup -CatalogName $env.firstCatalog
        } | Should -Not -Throw
    }

    It 'ListDeviceInCatalog' {
        {
            $listDevice = Get-AzSphereCatalogDevice -ResourceGroupName $env.resourceGroup -CatalogName $env.firstCatalog
            $listDevice.Count | Should -Be 4
        } | Should -Not -Throw
    }

    It 'ListDeviceByGroup' {
        {
            $listDevice = Get-AzSphereDevice -ResourceGroupName $env.resourceGroup -CatalogName $env.firstCatalog -ProductName $env.firstProduct -GroupName $env.TestDeviceGroup
            $listDevice.Count | Should -Be 2
        } | Should -Not -Throw
    }

    It 'CountDeviceInCatalog' {
        {
            $result = Invoke-AzSphereCountCatalogDevice -ResourceGroupName $env.resourceGroup -CatalogName $env.firstCatalog
            $result.Value | Should -Be 4
        } | Should -Not -Throw
    }

    It 'CountDeviceInProdcut' {
        {
            $result = Invoke-AzSphereCountProductDevice -ResourceGroupName $env.resourceGroup -CatalogName $env.firstCatalog -ProductName $env.firstProduct
            $result.Value | Should -Be 3
        } | Should -Not -Throw
    }

    It 'CountDeviceInGroup' {
        {
            $result = Invoke-AzSphereCountDeviceGroupDevice -ResourceGroupName $env.resourceGroup -CatalogName $env.firstCatalog -ProductName $env.firstProduct -DeviceGroupName $env.TestDeviceGroup
            $result.Value | Should -Be 2
        } | Should -Not -Throw
    }

    It 'UpdateDevice2AssignSecondProduct' {
        {
            $devGroup = Get-AzSphereDeviceGroup -Name $env.DevDeviceGroup -ProductName $env.secondProduct -CatalogName $env.firstCatalog -ResourceGroupName $env.resourceGroup

            Update-AzSphereDevice -CatalogName $env.firstCatalog -GroupName $env.TestDeviceGroup -Name $env.deviceID2 -ProductName $env.firstProduct -ResourceGroupName $env.resourceGroup -DeviceGroupId $devGroup.Id
        } | Should -Not -Throw
    }

    It 'UpdateDeviceUnassign' {
        {
            $devGroupId = '/subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/'+$env.resourceGroup+'/providers/Microsoft.AzureSphere/catalogs/'+$env.firstCatalog+'/products/.default/deviceGroups/.default'
            
            Write-Host 'Unassign device 3 from first product test device group into first catalog' $env.firstCatalog
            Update-AzSphereDevice -CatalogName $env.firstCatalog -GroupName $env.TestDeviceGroup -Name $env.deviceID3 -ProductName $env.firstProduct -ResourceGroupName $env.resourceGroup -DeviceGroupId $devGroupId

            Write-Host 'Unassign device 2 from second product dev device group into first catalog' $env.firstCatalog
            Update-AzSphereDevice -CatalogName $env.firstCatalog -GroupName $env.DevDeviceGroup -Name $env.deviceID2 -ProductName $env.secondProduct -ResourceGroupName $env.resourceGroup -DeviceGroupId $devGroupId

            Write-Host 'Unassign device 4 from second product test device group into first catalog' $env.firstCatalog
            Update-AzSphereDevice -CatalogName $env.firstCatalog -GroupName $env.TestDeviceGroup -Name $env.deviceID4 -ProductName $env.secondProduct -ResourceGroupName $env.resourceGroup -DeviceGroupId $devGroupId

            Write-Host 'Unassign device 1 from first product dev device group into first catalog' $env.firstCatalog
            Update-AzSphereDevice -CatalogName $env.firstCatalog -GroupName $env.DevDeviceGroup -Name $env.deviceID1 -ProductName $env.firstProduct -ResourceGroupName $env.resourceGroup -DeviceGroupId $devGroupId

            #Clean devices in test catalog
        } | Should -Not -Throw
    }

    It 'DeleteViaIdentityDeviceGroup' {
        {
            $devicegroup = Get-AzSphereDeviceGroup -CatalogName $env.firstCatalog -Name $env.TestDeviceGroup -ProductName $env.firstProduct -ResourceGroupName $env.resourceGroup
            Remove-AzSphereDeviceGroup -InputObject $devicegroup
        } | Should -Not -Throw
    }

    It 'DeleteDeviceGroup' {
        {
            Remove-AzSphereDeviceGroup -CatalogName $env.firstCatalog -Name $env.DevDeviceGroup -ProductName $env.firstProduct -ResourceGroupName $env.resourceGroup
        } | Should -Not -Throw
    }

    It 'DeleteViaIdentityProduct' {
        {
            $product = Get-AzSphereProduct -CatalogName $env.firstCatalog -Name $env.secondProduct -ResourceGroupName $env.resourceGroup
            Remove-AzSphereProduct -InputObject $product
        } | Should -Not -Throw
    }
}
