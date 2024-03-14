if(($null -eq $TestName) -or ($TestName -contains 'AzSphereMainScenario'))
{
  $loadEnvPath = Join-Path $PSScriptRoot 'loadEnv.ps1'
  if (-Not (Test-Path -Path $loadEnvPath)) {
      $loadEnvPath = Join-Path $PSScriptRoot '..\loadEnv.ps1'
  }
  . ($loadEnvPath)
  $TestRecordingFile = Join-Path $PSScriptRoot 'AzSphereMainScenario.Recording.json'
  $currentPath = $PSScriptRoot
  while(-not $mockingPath) {
      $mockingPath = Get-ChildItem -Path $currentPath -Recurse -Include 'HttpPipelineMocking.ps1' -File
      $currentPath = Split-Path -Path $currentPath -Parent
  }
  . ($mockingPath | Select-Object -First 1).FullName
}

Describe 'AzSphereMainScenario' {
    It 'CreateUpdateCatalog' {
        {
            Write-Host 'Start to create test catalog' $env.secondCatalog
            $catalogB = New-AzSphereCatalog -Name $env.secondCatalog -ResourceGroupName $env.resourceGroup -Location $env.globalLocation
            $catalogB.Name | Should -Be $env.secondCatalog

            Write-Host 'Update test catalog' $env.secondCatalog
            Update-AzSphereCatalog -InputObject $catalogB -Tag @{"abc"="123"}
        } | Should -Not -Throw
    }

    It 'ListCatalogBySub' {
        {
            $listSub = Get-AzSphereCatalog
            $listSub.Count | Should -BeGreaterThan 100
        } | Should -Not -Throw
    }

    It 'GetCatalog' {
        {
            $catalog = Get-AzSphereCatalog -Name $env.secondCatalog -ResourceGroupName $env.resourceGroup
            $catalog.Name | Should -Be $env.secondCatalog
        } | Should -Not -Throw
    }

    It 'ListCatalogByGroup' {
        {
            $listGroup = Get-AzSphereCatalog -ResourceGroupName $env.resourceGroup
            $listGroup.Count | Should -BeGreaterOrEqual 1
        } | Should -Not -Throw
    }

    It 'GetCertificate' {
        {
            Write-Host 'List certificate for first catalog' $env.secondCatalog
            $certSerial = Get-AzSphereCertificate -ResourceGroupName $env.resourceGroup -CatalogName $env.secondCatalog
            $certSerial.ResourceGroupName | Should -Be $env.resourceGroup

            $serialNumberFirst = $certSerial.Name
            Write-Host 'Get certificate for first catalog' $env.secondCatalog
            Get-AzSphereCertificate -ResourceGroupName $env.resourceGroup -CatalogName $env.secondCatalog -SerialNumber $serialNumberFirst

            Write-Host 'Get certificate cert chain for first catalog' $env.secondCatalog
            Get-AzSphereCertificateCertChain -ResourceGroupName $env.resourceGroup -CatalogName $env.secondCatalog -SerialNumber $serialNumberFirst
            
            Write-Host 'Get certificate proof for first catalog' $env.secondCatalog
            Get-AzSphereCertificateProof -ResourceGroupName $env.resourceGroup -CatalogName $env.secondCatalog -SerialNumber $serialNumberFirst -ProofOfPossessionNonce proofOfPossessionNonce
        } | Should -Not -Throw
    }

    It 'CreateProduct' {
        {
            New-AzSphereProduct -CatalogName $env.secondCatalog -Name $env.anotherProduct -ResourceGroupName $env.resourceGroup
        } | Should -Not -Throw
    }

    It 'Get' {
        {
            $prod1 = Get-AzSphereProduct -CatalogName $env.secondCatalog -Name $env.anotherProduct -ResourceGroupName $env.resourceGroup
            $prod1.Name | Should -Be $env.anotherProduct
        } | Should -Not -Throw
    }

    It 'UpdateProduct' {
        {
            $description = 'Test product'
            $prod1 = Update-AzSphereProduct -CatalogName $env.secondCatalog -Name $env.anotherProduct -ResourceGroupName $env.resourceGroup -Description $description
            $prod1.Description | Should -Be $description
        } | Should -Not -Throw
    }
    
    It 'CreateGetUpdateDeviceGroup' {
        {
            $deviceGroup = New-AzSphereDeviceGroup -Name $env.anotherDeviceGroup -ProductName $env.anotherProduct -CatalogName $env.secondCatalog -ResourceGroupName $env.resourceGroup
            
            $description = 'Test device group'
            $update = Update-AzSphereDeviceGroup -CatalogName $env.secondCatalog -Name $env.anotherDeviceGroup -ProductName $env.anotherProduct -ResourceGroupName $env.resourceGroup -Description $description
            $update.Description | Should -Be $description

            $result = Get-AzSphereDeviceGroup -InputObject $deviceGroup
            $result.Description | Should -Be $description
            $result.Name | Should -Be $env.anotherDeviceGroup
        } | Should -Not -Throw
    }

    It 'ListGroupInCatalog' {
        {
            $listDeviceGroup = Get-AzSphereCatalogDeviceGroup -ResourceGroupName $env.resourceGroup -CatalogName $env.secondCatalog
            $listDeviceGroup.Count | Should -BeGreaterOrEqual 1
        } | Should -Not -Throw
    }

    It 'DeleteDeviceGroup' {
        {
            Remove-AzSphereDeviceGroup -CatalogName $env.firstCatalog -Name $env.anotherDeviceGroup -ProductName $env.firstProduct -ResourceGroupName $env.resourceGroup
        } | Should -Not -Throw
    }

    It 'DeleteProduct' {
        {
            Remove-AzSphereProduct -CatalogName $env.secondCatalog -Name $env.anotherProduct -ResourceGroupName $env.resourceGroup
        } | Should -Not -Throw
    }

    It 'DeleteViaIdentityCatalog' {
        {
            $catalog = Get-AzSphereCatalog -Name $env.secondCatalog -ResourceGroupName $env.resourceGroup
            Remove-AzSphereCatalog -InputObject $catalog
        } | Should -Not -Throw
    }

    It 'DeleteCatalog' {
        {
            Write-Host 'Clean environment. Start to delete test catalog' $env.firstCatalog
            Remove-AzSphereCatalog -Name $env.firstCatalog -ResourceGroupName $env.resourceGroup
        } | Should -Not -Throw
    }
}
