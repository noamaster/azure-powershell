#### New-AzSphereCatalog

#### SYNOPSIS
Create a Catalog

#### SYNTAX

+ CreateExpanded (Default)
```powershell
New-AzSphereCatalog -Name <String> -ResourceGroupName <String> -Location <String> [-SubscriptionId <String>]
 [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ CreateViaJsonFilePath
```powershell
New-AzSphereCatalog -Name <String> -ResourceGroupName <String> -JsonFilePath <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

+ CreateViaJsonString
```powershell
New-AzSphereCatalog -Name <String> -ResourceGroupName <String> -JsonString <String> [-SubscriptionId <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Example 1: Create a catalog
```powershell
New-AzSphereCatalog -name test2024 -ResourceGroupName joyer-test -Location global
```

```output
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/joyer-test/providers/Microsoft.AzureSphere/catalogs/test2024
Location                     : global
Name                         : test2024
ProvisioningState            : Succeeded
ResourceGroupName            : joyer-test
RetryAfter                   : 
SystemDataCreatedAt          : 
SystemDataCreatedBy          : 
SystemDataCreatedByType      : 
SystemDataLastModifiedAt     : 
SystemDataLastModifiedBy     : 
SystemDataLastModifiedByType : 
Tag                          : {
                               }
TenantId                     : 7de8a199-bb33-4eda-9600-583103317243
Type                         : microsoft.azuresphere/catalogs
```

This command creates a catalog.


#### Get-AzSphereCatalog

#### SYNOPSIS
Get a Catalog

#### SYNTAX

+ List (Default)
```powershell
Get-AzSphereCatalog [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ Get
```powershell
Get-AzSphereCatalog -Name <String> -ResourceGroupName <String> [-SubscriptionId <String[]>]
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzSphereCatalog -InputObject <ISphereIdentity> [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ List1
```powershell
Get-AzSphereCatalog -ResourceGroupName <String> [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: List all catalogs for a given resource group
```powershell
Get-AzSphereCatalog -ResourceGroupName test-sataneja-10
```

```output
Location Name                   SystemDataCreatedAt    SystemDataCreatedBy    SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType ResourceGroupName      
-------- ----                   -------------------    -------------------    ----------------------- ------------------------ ------------------------ ---------------------------- ----------- 
global   CAT43                  9/24/2022 12:54:16 PM  example@microsoft.com  User                    9/24/2022 12:54:16 PM    example@microsoft.com    User                         test-satan… 
global   CAT007                 9/26/2022 8:58:15 PM   example@microsoft.com  User                    9/26/2022 8:58:15 PM     example@microsoft.com    User                         test-satan… 
global   CAT10                  10/10/2022 4:23:53 PM  example@microsoft.com  User                    10/10/2022 4:23:53 PM    example@microsoft.com    User                         test-satan… 
global   TCAT01                 10/14/2022 12:12:22 AM example@microsoft.com  User                    10/14/2022 12:12:22 AM   example@microsoft.com    User                         test-satan… 
global   TestCatalog1x3         4/25/2023 10:00:52 PM  example@microsoft.com  User                    4/25/2023 10:00:52 PM    example@microsoft.com    User                         test-satan… 
global   TestCatalog1x3_Catalog 5/11/2023 6:12:50 PM   example@microsoft.com  User                    5/11/2023 6:12:50 PM     example@microsoft.com    User                         test-satan… 
```

This command lists all catalogs for a given resource group.

+ Example 2: Get specific catalog with specified resource group
```powershell
Get-AzSphereCatalog -Name "testcat" -ResourceGroupName "goyedokun"
```

```output
Id                           : /subscriptions/82f138e0-1c79-4708-bda1-5e224cd688b2/resourceGroups/goyedokun/providers/Microsoft.AzureSphere/catalogs/testcat
Location                     : global
Name                         : testcat
ProvisioningState            : Succeeded
ResourceGroupName            : goyedokun
RetryAfter                   : 
SystemDataCreatedAt          : 6/27/2023 6:49:50 PM
SystemDataCreatedBy          : example@microsoft.com
SystemDataCreatedByType      : User
SystemDataLastModifiedAt     : 6/27/2023 6:49:50 PM
SystemDataLastModifiedBy     : example@microsoft.com
SystemDataLastModifiedByType : User
Tag                          : {
                               }
Type                         : microsoft.azuresphere/catalogs
```

This command get specific catalog with specified resource group.

+ Example 2: List all catalogs for connected subscription
```powershell
Get-AzSphereCatalog
```

```output
Location Name                           SystemDataCreatedAt    SystemDataCreatedBy                  SystemDataCreatedByType SystemDataLastModifiedAt SystemData
                                                                                                                                                     LastModifi 
                                                                                                                                                     edBy       
-------- ----                           -------------------    -------------------                  ----------------------- ------------------------ ---------- 
global   MyCatalog3                     4/21/2021 9:32:32 PM   example@microsoft.com                User                    8/10/2023 3:21:08 PM     example@m… 
global   MyCatalog2                     5/20/2021 4:44:38 PM   example@microsoft.com                User                    5/20/2021 4:44:38 PM     example@m… 
global   MyCatalog1                     5/20/2021 4:45:44 PM   example@microsoft.com                User                    5/20/2021 4:45:44 PM     example@m… 
global   CatalogARMSetup_39f85f04       8/18/2021 8:28:11 PM   5223a8bc-448a-411c-bcd4-7d41745ed6ba Application             8/18/2021 8:28:11 PM     5223a8bc-… 
global   CatalogARMSetup_3b15f308       9/17/2021 6:41:41 PM   5223a8bc-448a-411c-bcd4-7d41745ed6ba Application             9/17/2021 6:41:41 PM     5223a8bc-… 
global   mrarmcatalog1                  9/21/2021 7:27:16 PM   example@microsoft.com                User                    9/21/2021 7:27:16 PM     example@m… 
global   CatalogARMSetup_eb5cca0a       9/21/2021 10:06:28 PM  5223a8bc-448a-411c-bcd4-7d41745ed6ba Application             9/21/2021 10:06:28 PM    5223a8bc-… 
global   CatalogARMSetup_f8c1fea7       9/21/2021 10:06:31 PM  5223a8bc-448a-411c-bcd4-7d41745ed6ba Application             9/21/2021 10:06:31 PM    5223a8bc-… 
global   CatalogARMSetup_f2d88f81       9/21/2021 10:06:38 PM  5223a8bc-448a-411c-bcd4-7d41745ed6ba Application             9/21/2021 10:06:38 PM    5223a8bc-… 
global   CatalogARMSetup_1711d4b8       9/21/2021 10:06:42 PM  5223a8bc-448a-411c-bcd4-7d41745ed6ba Application             9/21/2021 10:06:42 PM    5223a8bc-… 
global   CatalogARMSetup_04744136       10/1/2021 7:14:04 PM   5223a8bc-448a-411c-bcd4-7d41745ed6ba Application             10/1/2021 7:14:04 PM     5223a8bc-… 
global   CatalogARMSetup_bff4a3fe       10/5/2021 5:14:48 PM   5223a8bc-448a-411c-bcd4-7d41745ed6ba Application             10/5/2021 5:14:48 PM     5223a8bc-… 
global   CatalogARMSetup_e05ad6ac       10/5/2021 5:15:05 PM   5223a8bc-448a-411c-bcd4-7d41745ed6ba Application             10/5/2021 5:15:05 PM     5223a8bc-… 
global   newCatalog                     8/15/2023 3:06:31 AM   example@microsoft.com                User                    8/15/2023 3:10:39 AM     example@m… 
```

This command lists all catalogs for current subscription.


#### Remove-AzSphereCatalog

#### SYNOPSIS
Delete a Catalog

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzSphereCatalog -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzSphereCatalog -InputObject <ISphereIdentity> [-DefaultProfile <PSObject>] [-AsJob] [-NoWait]
 [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Delete a catalog
```powershell
Remove-AzSphereCatalog -Name test2024 -ResourceGroupName joyer-test
```

This command deletes specified catalog.


#### Update-AzSphereCatalog

#### SYNOPSIS
Update a Catalog

#### SYNTAX

+ UpdateExpanded (Default)
```powershell
Update-AzSphereCatalog -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 [-Tag <Hashtable>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityExpanded
```powershell
Update-AzSphereCatalog -InputObject <ISphereIdentity> [-Tag <Hashtable>] [-DefaultProfile <PSObject>]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaJsonFilePath
```powershell
Update-AzSphereCatalog -Name <String> -ResourceGroupName <String> -JsonFilePath <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaJsonString
```powershell
Update-AzSphereCatalog -Name <String> -ResourceGroupName <String> -JsonString <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Update tag
```powershell
Update-AzSphereCatalog -Name test2024 -ResourceGroupName joyer-test -Tag @{"123"="abc"}
```

```output
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/joyer-test/providers/Microsoft.AzureSphere/catalogs/test2024
Location                     : global
Name                         : test2024
ProvisioningState            : Succeeded
ResourceGroupName            : joyer-test
SystemDataCreatedAt          : 2/1/2024 1:51:44 AM
SystemDataCreatedBy          : example@microsoft.com
SystemDataCreatedByType      : User
SystemDataLastModifiedAt     : 2/8/2024 1:54:33 AM
SystemDataLastModifiedBy     : example@microsoft.com
SystemDataLastModifiedByType : User
Tag                          : {
                                 "123": "abc"
                               }
TenantId                     : 
Type                         : microsoft.azuresphere/catalogs
```

This command updates tag for specified catalog.


#### Get-AzSphereCatalogDevice

#### SYNOPSIS
Lists devices for catalog.

#### SYNTAX

```powershell
Get-AzSphereCatalogDevice -CatalogName <String> -ResourceGroupName <String> [-SubscriptionId <String[]>]
 [-Filter <String>] [-Maxpagesize <Int32>] [-Skip <Int32>] [-Top <Int32>] [-DefaultProfile <PSObject>]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: List for the specified catalog with resource group
```powershell
Get-AzSphereCatalogDevice -CatalogName test2024 -ResourceGroupName joyer-test
```

```output
Name                                                                                                                             SystemDataCreatedAt SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy System 
                                                                                                                                                                                                                                                   DataLa 
                                                                                                                                                                                                                                                   stModi 
                                                                                                                                                                                                                                                   fiedBy 
                                                                                                                                                                                                                                                   Type   
----                                                                                                                             ------------------- ------------------- ----------------------- ------------------------ ------------------------ ------ 
dbb0e0cb8bd961a6129096e1e8a1375ac1fa274f030c08161b37ae3bc5a94f443bdb628cf257bc5bc810d8768c03b6f5ca301a35cd0169f56a49624255964560
b15332603ba55fb52b00fec8549fdaa46b7fb6ba35694bc8943131ccb4b302846d224580a27880a2996b9fd4f1b2699400b1627059b6a90d67dd29e2984ee147
5d257fbcf76a5853832122d9b0e2410daa1438e3c1cde005162a837a7535c08973cc819a50cf8eb724ffc88dada06b40bee6010e82a8f84d2fef0fc263061d67
```

This command gets list of device resources for the specified catalog with resource group.


#### Get-AzSphereCatalogDeviceGroup

#### SYNOPSIS
List the device groups for the catalog.

#### SYNTAX

```powershell
Get-AzSphereCatalogDeviceGroup -CatalogName <String> -ResourceGroupName <String> [-SubscriptionId <String[]>]
 [-Filter <String>] [-Maxpagesize <Int32>] [-Skip <Int32>] [-Top <Int32>] [-DeviceGroupName <String>]
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: List for the specified catalog with resource group
```powershell
Get-AzSphereCatalogDeviceGroup -CatalogName test2024 -ResourceGroupName joyer-test
```

```output
Name             SystemDataCreatedAt SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType ResourceGroupName      
----             ------------------- ------------------- ----------------------- ------------------------ ------------------------ ---------------------------- -----------------      
testdevicegroup                                                                                                                                                 joyer-test
testdevicegroup2                                                                                                                                                joyer-test
```

This command gets list of device groups for the specified catalog with resource group.


#### Get-AzSphereCatalogDeviceInsight

#### SYNOPSIS
Lists device insights for catalog.

#### SYNTAX

```powershell
Get-AzSphereCatalogDeviceInsight -CatalogName <String> -ResourceGroupName <String>
 [-SubscriptionId <String[]>] [-Filter <String>] [-Maxpagesize <Int32>] [-Skip <Int32>] [-Top <Int32>]
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: List device insight
```powershell
Get-AzSphereCatalogDeviceInsight -CatalogName test2024 -ResourceGroupName joyer-test
```

This command gets a list of device insights for specified catalog.


#### Get-AzSphereCertificate

#### SYNOPSIS
Get a Certificate

#### SYNTAX

+ List (Default)
```powershell
Get-AzSphereCertificate -CatalogName <String> -ResourceGroupName <String> [-SubscriptionId <String[]>]
 [-Filter <String>] [-Maxpagesize <Int32>] [-Skip <Int32>] [-Top <Int32>] [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

+ Get
```powershell
Get-AzSphereCertificate -CatalogName <String> -ResourceGroupName <String> -SerialNumber <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzSphereCertificate -InputObject <ISphereIdentity> [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentityCatalog
```powershell
Get-AzSphereCertificate -CatalogInputObject <ISphereIdentity> -SerialNumber <String>
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: List for the specified catalog with resource group
```powershell
Get-AzSphereCertificate -CatalogName test2024 -ResourceGroupName joyer-test
```

```output
ExpiryUtc                    : 4/30/2024 10:51:54 PM
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/joyer-test/providers/Microsoft.AzureSphere/catalogs/test2024/certificates/'serial number'
Name                         : 'serial number'
NotBeforeUtc                 : 1/31/2024 10:51:54 PM
PropertiesCertificate        : 'certificate information'
ProvisioningState            : Succeeded
ResourceGroupName            : joyer-test
Status                       : Active
Subject                      : CN=Microsoft Azure Sphere INT 7de8a199-bb33-4eda-9600-583103317243, O=Microsoft Corporation, L=Redmond, S=Washington, C=US
SystemDataCreatedAt          : 
SystemDataCreatedBy          : 
SystemDataCreatedByType      : 
SystemDataLastModifiedAt     : 
SystemDataLastModifiedBy     : 
SystemDataLastModifiedByType : 
Thumbprint                   : 92C60521BB46C72D66FA72CF59EF701D9269A236
Type                         : Microsoft.AzureSphere/catalogs/certificates
```

This command get a list of certificate for the specified catalog with resource group.


#### Get-AzSphereCertificateCertChain

#### SYNOPSIS
Retrieves cert chain.

#### SYNTAX

+ Retrieve (Default)
```powershell
Get-AzSphereCertificateCertChain -CatalogName <String> -ResourceGroupName <String> -SerialNumber <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ RetrieveViaIdentity
```powershell
Get-AzSphereCertificateCertChain -InputObject <ISphereIdentity> [-DefaultProfile <PSObject>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ RetrieveViaIdentityCatalog
```powershell
Get-AzSphereCertificateCertChain -CatalogInputObject <ISphereIdentity> -SerialNumber <String>
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Get a certificate cert chain
```powershell
Get-AzSphereCertificateCertChain -CatalogName test2024 -ResourceGroupName joyer-test -SerialNumber 'serial number'
```

```output
CertificateChain
----------------
'information'
```

This command gets a certificate cert chain.


#### Get-AzSphereCertificateProof

#### SYNOPSIS
Gets the proof of possession nonce.

#### SYNTAX

+ RetrieveExpanded (Default)
```powershell
Get-AzSphereCertificateProof -CatalogName <String> -ResourceGroupName <String> -SerialNumber <String>
 -ProofOfPossessionNonce <String> [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ RetrieveViaIdentityCatalogExpanded
```powershell
Get-AzSphereCertificateProof -CatalogInputObject <ISphereIdentity> -SerialNumber <String>
 -ProofOfPossessionNonce <String> [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ RetrieveViaIdentityExpanded
```powershell
Get-AzSphereCertificateProof -InputObject <ISphereIdentity> -ProofOfPossessionNonce <String>
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Get a proof Of Possession Nonce
```powershell
Get-AzSphereCertificateProof -CatalogName test2024 -ResourceGroupName joyer-test -SerialNumber 'serial number' -ProofOfPossessionNonce proofOfPossessionNonce
```

```output
Certificate       : 'information'
ExpiryUtc         : 
NotBeforeUtc      : 
ProvisioningState : 
Status            : 
Subject           : 
Thumbprint        : 
```

This command gets a proof Of Possession Nonce for specified catalog and serial number.


#### Invoke-AzSphereClaimDeviceGroupDevice

#### SYNOPSIS
Bulk claims the devices.
Use '.unassigned' or '.default' for the device group and product names when bulk claiming devices to a catalog only.

#### SYNTAX

+ ClaimExpanded (Default)
```powershell
Invoke-AzSphereClaimDeviceGroupDevice -CatalogName <String> -DeviceGroupName <String> -ProductName <String>
 -ResourceGroupName <String> -DeviceIdentifier <String[]> [-SubscriptionId <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ ClaimViaIdentityCatalogExpanded
```powershell
Invoke-AzSphereClaimDeviceGroupDevice -CatalogInputObject <ISphereIdentity> -DeviceGroupName <String>
 -ProductName <String> -DeviceIdentifier <String[]> [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ ClaimViaIdentityExpanded
```powershell
Invoke-AzSphereClaimDeviceGroupDevice -InputObject <ISphereIdentity> -DeviceIdentifier <String[]>
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ ClaimViaIdentityProductExpanded
```powershell
Invoke-AzSphereClaimDeviceGroupDevice -DeviceGroupName <String> -ProductInputObject <ISphereIdentity>
 -DeviceIdentifier <String[]> [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Bulk claims the devices
```powershell
Invoke-AzsphereclaimDeviceGroupDevice -CatalogName test2024 -DeviceGroupName testdevicegroup -ProductName product2024 -ResourceGroupName joyer-test -DeviceIdentifier B15332603BA55FB52B00FEC8549FDAA46B7FB6BA35694BC8943131CCB4B302846D224580A27880A2996B9FD4F1B2699400B1627059B6A90D67DD29E2984EE147,5D257FBCF76A5853832122D9B0E2410DAA1438E3C1CDE005162A837A7535C08973CC819A50CF8EB724FFC88DADA06B40BEE6010E82A8F84D2FEF0FC263061D67
```

This command bulk claims the devices.


#### Invoke-AzSphereCountCatalogDevice

#### SYNOPSIS
Counts devices in catalog.

#### SYNTAX

+ Count (Default)
```powershell
Invoke-AzSphereCountCatalogDevice -CatalogName <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ CountViaIdentity
```powershell
Invoke-AzSphereCountCatalogDevice -InputObject <ISphereIdentity> [-DefaultProfile <PSObject>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Get device number
```powershell
Invoke-AzSphereCountCatalogDevice -CatalogName test2024 -ResourceGroupName joyer-test
```

```output
Value
-----
    3
```

This command returns a number of device in the catalog.


#### Invoke-AzSphereCountDeviceGroupDevice

#### SYNOPSIS
Counts devices in device group.
'.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

#### SYNTAX

+ Count (Default)
```powershell
Invoke-AzSphereCountDeviceGroupDevice -CatalogName <String> -DeviceGroupName <String> -ProductName <String>
 -ResourceGroupName <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

+ CountViaIdentity
```powershell
Invoke-AzSphereCountDeviceGroupDevice -InputObject <ISphereIdentity> [-DefaultProfile <PSObject>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ CountViaIdentityCatalog
```powershell
Invoke-AzSphereCountDeviceGroupDevice -CatalogInputObject <ISphereIdentity> -DeviceGroupName <String>
 -ProductName <String> [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ CountViaIdentityProduct
```powershell
Invoke-AzSphereCountDeviceGroupDevice -DeviceGroupName <String> -ProductInputObject <ISphereIdentity>
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Get device number
```powershell
Invoke-AzSphereCountDeviceGroupDevice -CatalogName test2024 -ResourceGroupName joyer-test -DeviceGroupName testdevicegroup -ProductName product2024
```

```output
Value
-----
    3
```

This command returns device number for the device group.


#### Invoke-AzSphereCountProductDevice

#### SYNOPSIS
Counts devices in product.
'.default' and '.unassigned' are system defined values and cannot be used for product name.

#### SYNTAX

+ Count (Default)
```powershell
Invoke-AzSphereCountProductDevice -CatalogName <String> -ProductName <String> -ResourceGroupName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ CountViaIdentity
```powershell
Invoke-AzSphereCountProductDevice -InputObject <ISphereIdentity> [-DefaultProfile <PSObject>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ CountViaIdentityCatalog
```powershell
Invoke-AzSphereCountProductDevice -CatalogInputObject <ISphereIdentity> -ProductName <String>
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Get device number
```powershell
Invoke-AzSphereCountProductDevice -CatalogName test2024 -ResourceGroupName joyer-test -ProductName product2024
```

```output
Value
-----
    3
```

This command returns device number for the product.


#### New-AzSphereDeployment

#### SYNOPSIS
Create a Deployment.
'.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

#### SYNTAX

+ CreateExpanded (Default)
```powershell
New-AzSphereDeployment -CatalogName <String> -DeviceGroupName <String> -Name <String> -ProductName <String>
 -ResourceGroupName <String> [-SubscriptionId <String>] [-DeployedImage <IImage[]>] [-DeploymentId <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ CreateViaJsonFilePath
```powershell
New-AzSphereDeployment -CatalogName <String> -DeviceGroupName <String> -Name <String> -ProductName <String>
 -ResourceGroupName <String> -JsonFilePath <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ CreateViaJsonString
```powershell
New-AzSphereDeployment -CatalogName <String> -DeviceGroupName <String> -Name <String> -ProductName <String>
 -ResourceGroupName <String> -JsonString <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Create a deployment with deployed image
```powershell
$image1 = Get-AzSphereImage -Name '14a6729e-5819-4737-8713-37b4798533f8' -CatalogName test2024 -ResourceGroupName joyer-test
New-AzSphereDeployment -Name .default -CatalogName test2024 -DeviceGroupName testdevicegroup -ProductName product2024 -ResourceGroupName joyer-test -DeployedImage $image1
```

```output
DateUtc                      : 3/1/2024 8:08:11 AM
DeployedImage                : {{
                                 "id": "/subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/joyer-test/providers/Microsoft.AzureSphere/catalogs/test2024/images/14a6729e-5819-4737 
                               -8713-37b4798533f8",
                                 "name": "14a6729e-5819-4737-8713-37b4798533f8",
                                 "type": "Microsoft.AzureSphere/catalogs/images",
                                 "properties": {
                                   "image": "AzureSphereBlink1",
                                   "imageId": "14a6729e-5819-4737-8713-37b4798533f8",
                                   "regionalDataBoundary": "None",
                                   "uri": "https://as3imgptint003.blob.core.windows.net/7de8a199-bb33-4eda-9600-583103317243/imagesaks/14a6729e-5819-4737-8713-37b4798533f8?skoid=cc6e3fcf-ab4d-4 
                               b0d-b3f9-9769604c1e52\u0026sktid=72f988bf-86f1-41af-91ab-2d7cd011db47\u0026skt=2024-03-01T08%3A03%3A45Z\u0026ske=2024-03-01T09%3A08%3A45Z\u0026sks=b\u0026skv=2021
                               -12-02\u0026sv=2021-12-02\u0026spr=https,http\u0026se=2024-03-01T16%3A08%3A45Z\u0026sr=b\u0026sp=r\u0026sig=UviBTlciImOjqw968crarXzXyQ29UMEi4js56AEOPgU%3D",       
                                   "componentId": "42257ad6-382d-405f-b7cc-e110fbda2d0b",
                                   "imageType": "Applications",
                                   "provisioningState": "Succeeded"
                                 }
                               }}
DeploymentId                 : e1e61a75-0629-491c-8f4f-0c054116d71c
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/joyer-test/providers/Microsoft.AzureSphere/catalogs/test2024/products/product2024/deviceGroups/ 
                               testdevicegroup/deployments/e1e61a75-0629-491c-8f4f-0c054116d71c
Name                         : e1e61a75-0629-491c-8f4f-0c054116d71c
ProvisioningState            : Succeeded
ResourceGroupName            : joyer-test
SystemDataCreatedAt          : 3/1/2024 8:08:11 AM
SystemDataCreatedBy          : 
SystemDataCreatedByType      : 
SystemDataLastModifiedAt     : 3/1/2024 8:08:11 AM
SystemDataLastModifiedBy     : 
SystemDataLastModifiedByType : 
Type                         : Microsoft.AzureSphere/catalogs/products/deviceGroups/deployments
```

This command create a deployment with deployed images.


#### Get-AzSphereDeployment

#### SYNOPSIS
Get a Deployment.
'.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

#### SYNTAX

+ List (Default)
```powershell
Get-AzSphereDeployment -CatalogName <String> -DeviceGroupName <String> -ProductName <String>
 -ResourceGroupName <String> [-SubscriptionId <String[]>] [-Filter <String>] [-Maxpagesize <Int32>]
 [-Skip <Int32>] [-Top <Int32>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ Get
```powershell
Get-AzSphereDeployment -CatalogName <String> -DeviceGroupName <String> -Name <String> -ProductName <String>
 -ResourceGroupName <String> [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzSphereDeployment -InputObject <ISphereIdentity> [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentityCatalog
```powershell
Get-AzSphereDeployment -CatalogInputObject <ISphereIdentity> -DeviceGroupName <String> -Name <String>
 -ProductName <String> [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentityDeviceGroup
```powershell
Get-AzSphereDeployment -DeviceGroupInputObject <ISphereIdentity> -Name <String> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

+ GetViaIdentityProduct
```powershell
Get-AzSphereDeployment -DeviceGroupName <String> -Name <String> -ProductInputObject <ISphereIdentity>
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: List by resource group
```powershell
Get-AzSphereDeployment -ResourceGroupName joyer-test -DeviceGroupName testdevicegroup -ProductName product2024 -CatalogName test2024
```

```output
Name                                 SystemDataCreatedAt  SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType ResourceGroupName
----                                 -------------------  ------------------- ----------------------- ------------------------ ------------------------ ---------------------------- -----------------
009ada36-7515-4ff0-a54c-33b75bfae976 2/28/2024 2:36:04 AM                                             2/28/2024 2:36:04 AM                                                           joyer-test
2e83ddd9-6297-48df-9c2c-2257e6b3cc71 2/28/2024 2:57:56 AM                                             2/28/2024 2:57:56 AM                                                           joyer-test
```

This command lists all deployments for specified device group.

+ Example 2: Get specific deployment for device group
```powershell
Get-AzSphereDeployment -ResourceGroupName joyer-test -DeviceGroupName testdevicegroup -ProductName product2024 -CatalogName test2024 -Name 2e83ddd9-6297-48df-9c2c-2257e6b3cc71
```

```output
DateUtc                      : 2/28/2024 2:57:56 AM
DeployedImage                : {{
                                 "id": "/subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/joyer-test/providers/Microsoft.AzureSphere/catalogs/test2024/images/a04f0a91-b369-4249-a47d-28c118e2cb3b",
                                 "name": "a04f0a91-b369-4249-a47d-28c118e2cb3b",
                                 "type": "Microsoft.AzureSphere/catalogs/images",
                                 "properties": {
                                   "image": "GPIO_HighLevelApp",
                                   "imageId": "a04f0a91-b369-4249-a47d-28c118e2cb3b",
                                   "regionalDataBoundary": "None",
                                   "uri": "https://as3imgptint003.blob.core.windows.net/7de8a199-bb33-4eda-9600-583103317243/imagesaks/a04f0a91-b369-4249-a47d-28c118e2cb3b?skoid=cc6e
                               3fcf-ab4d-4b0d-b3f9-9769604c1e52\u0026sktid=72f988bf-86f1-41af-91ab-2d7cd011db47\u0026skt=2024-02-28T07%3A31%3A00Z\u0026ske=2024-02-28T08%3A36%3A00Z\u0
                               026sks=b\u0026skv=2021-12-02\u0026sv=2021-12-02\u0026spr=https,http\u0026se=2024-02-28T15%3A36%3A00Z\u0026sr=b\u0026sp=r\u0026sig=MbkzxZH1VQUGft%2BfXbE
                               DhubAVucDykFSEGgvqZVn5yk%3D",
                                   "componentId": "dc7f135c-6074-4d49-aa3a-160e4eed884f",
                                   "imageType": "Applications",
                                   "provisioningState": "Succeeded"
                                 }
                               }}
DeploymentId                 : 2e83ddd9-6297-48df-9c2c-2257e6b3cc71
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/joyer-test/providers/Microsoft.AzureSphere/catalogs/test2024/products/product2024/de
                               viceGroups/testdevicegroup/deployments/2e83ddd9-6297-48df-9c2c-2257e6b3cc71
Name                         : 2e83ddd9-6297-48df-9c2c-2257e6b3cc71
ProvisioningState            : Succeeded
ResourceGroupName            : joyer-test
SystemDataCreatedAt          : 2/28/2024 2:57:56 AM
SystemDataCreatedBy          : 
SystemDataCreatedByType      : 
SystemDataLastModifiedAt     : 2/28/2024 2:57:56 AM
SystemDataLastModifiedBy     : 
SystemDataLastModifiedByType : 
Type                         : Microsoft.AzureSphere/catalogs/products/deviceGroups/deployments
```

This command gets specific deployment in specified device group.


#### New-AzSphereDevice

#### SYNOPSIS
Create a Device.
Use '.unassigned' or '.default' for the device group and product names to claim a device to the catalog only.

#### SYNTAX

+ CreateExpanded (Default)
```powershell
New-AzSphereDevice -CatalogName <String> -GroupName <String> -Name <String> -ProductName <String>
 -ResourceGroupName <String> [-SubscriptionId <String>] [-DeviceId <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ CreateViaJsonFilePath
```powershell
New-AzSphereDevice -CatalogName <String> -GroupName <String> -Name <String> -ProductName <String>
 -ResourceGroupName <String> -JsonFilePath <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ CreateViaJsonString
```powershell
New-AzSphereDevice -CatalogName <String> -GroupName <String> -Name <String> -ProductName <String>
 -ResourceGroupName <String> -JsonString <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Create a device
```powershell
New-AzSphereDevice -CatalogName "anotherNewOne" -GroupName ".default" -Name "45ffd2afe82d77b2b70f1daed2054abc64853a27395c6112d9adaf01047bae5a0caa72219f93db02e1a93f2c159ba2090a783077138e7fa542459621e6091e4c" -ProductName ".default" -ResourceGroupName "goyedokun"
```

```output
ChipSku                      : MT3620AN
DeviceId                     : fc9085337153e47eca0d42dcae83819f18ae90d916ae3b87d0206fef6acb9ca44f9e21b93c01311e83168393d112841decc5ef6d48c3d1d07be6b0bf8fec6e2b
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/goyedokun/providers/Microsoft.AzureSphere/catalogs/anotherNewOne/products/.default/deviceGroups/.default/devices/FC9085337153E47ECA0D42DCAE83819F18AE90D916AE3B87D0206FEF6ACB9CA44F9E21B93C01311E83168393D112841DECC5EF6D48C3D1D07BE6B0BF8FEC6E2B
LastAvailableOSVersion       :
LastInstalledOSVersion       :
LastOSUpdateUtc              :
LastUpdateRequestUtc         :
Name                         : fc9085337153e47eca0d42dcae83819f18ae90d916ae3b87d0206fef6acb9ca44f9e21b93c01311e83168393d112841decc5ef6d48c3d1d07be6b0bf8fec6e2b
ProvisioningState            : Succeeded
ResourceGroupName            : goyedokun
RetryAfter                   :
SystemDataCreatedAt          :
SystemDataCreatedBy          :
SystemDataCreatedByType      :
SystemDataLastModifiedAt     :
SystemDataLastModifiedBy     :
SystemDataLastModifiedByType :
Type                         : Microsoft.AzureSphere/catalogs/products/deviceGroups/devices

```

This command creates a device.


#### Get-AzSphereDevice

#### SYNOPSIS
Get a Device.
Use '.unassigned' or '.default' for the device group and product names when a device does not belong to a device group and product.

#### SYNTAX

+ List (Default)
```powershell
Get-AzSphereDevice -CatalogName <String> -GroupName <String> -ProductName <String> -ResourceGroupName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ Get
```powershell
Get-AzSphereDevice -CatalogName <String> -GroupName <String> -Name <String> -ProductName <String>
 -ResourceGroupName <String> [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzSphereDevice -InputObject <ISphereIdentity> [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentityCatalog
```powershell
Get-AzSphereDevice -CatalogInputObject <ISphereIdentity> -GroupName <String> -Name <String>
 -ProductName <String> [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentityDeviceGroup
```powershell
Get-AzSphereDevice -DeviceGroupInputObject <ISphereIdentity> -Name <String> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

+ GetViaIdentityProduct
```powershell
Get-AzSphereDevice -GroupName <String> -Name <String> -ProductInputObject <ISphereIdentity>
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: List by resource group
```powershell
Get-AzSphereDevice -CatalogName test2024 -ResourceGroupName "joyer-test" -GroupName testdevicegroup -ProductName product2024
```

```output
Name                                                                                                                             SystemDataCreatedAt SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy System 
                                                                                                                                                                                                                                                   DataLa 
                                                                                                                                                                                                                                                   stModi 
                                                                                                                                                                                                                                                   fiedBy 
                                                                                                                                                                                                                                                   Type   
----                                                                                                                             ------------------- ------------------- ----------------------- ------------------------ ------------------------ ------ 
dbb0e0cb8bd961a6129096e1e8a1375ac1fa274f030c08161b37ae3bc5a94f443bdb628cf257bc5bc810d8768c03b6f5ca301a35cd0169f56a49624255964560
b15332603ba55fb52b00fec8549fdaa46b7fb6ba35694bc8943131ccb4b302846d224580a27880a2996b9fd4f1b2699400b1627059b6a90d67dd29e2984ee147
5d257fbcf76a5853832122d9b0e2410daa1438e3c1cde005162a837a7535c08973cc819a50cf8eb724ffc88dada06b40bee6010e82a8f84d2fef0fc263061d67
```

This command gets list of device resources by resource group.

+ Example 2: Get specific resource with specified resource group
```powershell
Get-AzSphereDevice -CatalogName test2024 -ResourceGroupName "joyer-test" -GroupName testdevicegroup -ProductName product2024 -Name dbb0e0cb8bd961a6129096e1e8a1375ac1fa274f030c08161b37ae3bc5a94f443bdb628cf257bc5bc810d8768c03b6f5ca301a35cd0169f56a49624255964560
```

```output
ChipSku                      : MT3620AN
DeviceId                     : dbb0e0cb8bd961a6129096e1e8a1375ac1fa274f030c08161b37ae3bc5a94f443bdb628cf257bc5bc810d8768c03b6f5ca301a35cd0169f56a49624255964560
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/joyer-test/providers/Microsoft.AzureSphere/catalogs/test2024/products/product2024/deviceGroups/testdevicegroup/devices/dbb0e0cb8bd961a6129096e1e8a1375ac1fa274f030c08161b37ae3bc5a94f443bdb628cf257bc5bc810d8768c03b6f5ca301a35cd0169f56a49624255964560
LastAvailableOSVersion       : 
LastInstalledOSVersion       : 
LastOSUpdateUtc              : 
LastUpdateRequestUtc         : 
Name                         : dbb0e0cb8bd961a6129096e1e8a1375ac1fa274f030c08161b37ae3bc5a94f443bdb628cf257bc5bc810d8768c03b6f5ca301a35cd0169f56a49624255964560
ProvisioningState            : Succeeded
ResourceGroupName            : joyer-test
SystemDataCreatedAt          : 
SystemDataCreatedBy          : 
SystemDataCreatedByType      : 
SystemDataLastModifiedAt     : 
SystemDataLastModifiedBy     : 
SystemDataLastModifiedByType : 
Type                         : Microsoft.AzureSphere/catalogs/products/deviceGroups/devices
```

This command gets specific device resource with specified resource group.


#### Update-AzSphereDevice

#### SYNOPSIS
Update a Device.
Use '.unassigned' or '.default' for the device group and product names to move a device to the catalog level.

#### SYNTAX

+ UpdateExpanded (Default)
```powershell
Update-AzSphereDevice -CatalogName <String> -GroupName <String> -Name <String> -ProductName <String>
 -ResourceGroupName <String> [-SubscriptionId <String>] [-DeviceGroupId <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityCatalogExpanded
```powershell
Update-AzSphereDevice -CatalogInputObject <ISphereIdentity> -GroupName <String> -Name <String>
 -ProductName <String> [-DeviceGroupId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityDeviceGroupExpanded
```powershell
Update-AzSphereDevice -DeviceGroupInputObject <ISphereIdentity> -Name <String> [-DeviceGroupId <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityExpanded
```powershell
Update-AzSphereDevice -InputObject <ISphereIdentity> [-DeviceGroupId <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityProductExpanded
```powershell
Update-AzSphereDevice -GroupName <String> -Name <String> -ProductInputObject <ISphereIdentity>
 [-DeviceGroupId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

+ UpdateViaJsonFilePath
```powershell
Update-AzSphereDevice -CatalogName <String> -GroupName <String> -Name <String> -ProductName <String>
 -ResourceGroupName <String> -JsonFilePath <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaJsonString
```powershell
Update-AzSphereDevice -CatalogName <String> -GroupName <String> -Name <String> -ProductName <String>
 -ResourceGroupName <String> -JsonString <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Assign a device to another device group
```powershell
Update-AzSphereDevice -ResourceGroupName joyer-test -CatalogName test2024 -GroupName testdevicegroup -ProductName product2024 -Name DBB0E0CB8BD961A6129096E1E8A1375AC1FA274F030C08161B37AE3BC5A94F443BDB628CF257BC5BC810D8768C03B6F5CA301A35CD0169F56A49624255964560 -DeviceGroupId /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/joyer-test/providers/Microsoft.AzureSphere/catalogs/test2024/products/product2024/deviceGroups/testdevicegroup2
```

```output
ChipSku                      : 
DeviceId                     : 
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/providers/Microsoft.AzureSphere/locations/WESTCENTRALUS/operationStatuses/dc3e0b1a-59ae-4b00-bb84-9 
                               a7ea253f4e8*648856149066E98CE43CF51B8F3FC827768BFF5C8740097AD36EDFC456E7B110
LastAvailableOSVersion       : 
LastInstalledOSVersion       : 
LastOSUpdateUtc              : 
LastUpdateRequestUtc         : 
Name                         : dc3e0b1a-59ae-4b00-bb84-9a7ea253f4e8*648856149066E98CE43CF51B8F3FC827768BFF5C8740097AD36EDFC456E7B110
ProvisioningState            : 
ResourceGroupName            : 
SystemDataCreatedAt          : 
SystemDataCreatedBy          : 
SystemDataCreatedByType      : 
SystemDataLastModifiedAt     : 
SystemDataLastModifiedBy     : 
SystemDataLastModifiedByType : 
Type                         : 
```

This command assign a device to another device group.

+ Example 2: unassign a device
```powershell
Update-AzSphereDevice -ResourceGroupName joyer-test -CatalogName test2024 -GroupName testdevicegroup -ProductName product2024 -Name DBB0E0CB8BD961A6129096E1E8A1375AC1FA274F030C08161B37AE3BC5A94F443BDB628CF257BC5BC810D8768C03B6F5CA301A35CD0169F56A49624255964560 -DeviceGroupId /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/joyer-test/providers/Microsoft.AzureSphere/catalogs/test2024/products/.default/deviceGroups/.default
```

```output
ChipSku                      : 
DeviceId                     : 
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/providers/Microsoft.AzureSphere/locations/WESTCENTRALUS/operationStatuses/89c583a1-2a79-4f5f-ab4b-7e1cc7fb52e7* 
                               648856149066E98CE43CF51B8F3FC827768BFF5C8740097AD36EDFC456E7B110
LastAvailableOSVersion       : 
LastInstalledOSVersion       : 
LastOSUpdateUtc              : 
LastUpdateRequestUtc         : 
Name                         : 89c583a1-2a79-4f5f-ab4b-7e1cc7fb52e7*648856149066E98CE43CF51B8F3FC827768BFF5C8740097AD36EDFC456E7B110
ProvisioningState            : 
ResourceGroupName            : 
SystemDataCreatedAt          : 
SystemDataCreatedBy          : 
SystemDataCreatedByType      : 
SystemDataLastModifiedAt     : 
SystemDataLastModifiedBy     : 
SystemDataLastModifiedByType : 
Type                         : 
```

This command unassign a device to catalog.


#### New-AzSphereDeviceCapabilityImage

#### SYNOPSIS
Generates the capability image for the device.
Use '.unassigned' or '.default' for the device group and product names to generate the image for a device that does not belong to a specific device group and product.

#### SYNTAX

+ GenerateExpanded (Default)
```powershell
New-AzSphereDeviceCapabilityImage -CatalogName <String> -DeviceGroupName <String> -DeviceName <String>
 -ProductName <String> -ResourceGroupName <String> -Capability <String[]> [-SubscriptionId <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ GenerateViaIdentityCatalogExpanded
```powershell
New-AzSphereDeviceCapabilityImage -CatalogInputObject <ISphereIdentity> -DeviceGroupName <String>
 -DeviceName <String> -ProductName <String> -Capability <String[]> [-DefaultProfile <PSObject>] [-AsJob]
 [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ GenerateViaIdentityDeviceGroupExpanded
```powershell
New-AzSphereDeviceCapabilityImage -DeviceGroupInputObject <ISphereIdentity> -DeviceName <String>
 -Capability <String[]> [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

+ GenerateViaIdentityProductExpanded
```powershell
New-AzSphereDeviceCapabilityImage -DeviceGroupName <String> -DeviceName <String>
 -ProductInputObject <ISphereIdentity> -Capability <String[]> [-DefaultProfile <PSObject>] [-AsJob] [-NoWait]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ GenerateViaJsonFilePath
```powershell
New-AzSphereDeviceCapabilityImage -CatalogName <String> -DeviceGroupName <String> -DeviceName <String>
 -ProductName <String> -ResourceGroupName <String> -JsonFilePath <String> [-SubscriptionId <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ GenerateViaJsonString
```powershell
New-AzSphereDeviceCapabilityImage -CatalogName <String> -DeviceGroupName <String> -DeviceName <String>
 -ProductName <String> -ResourceGroupName <String> -JsonString <String> [-SubscriptionId <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Generates the capability image for the device.
```powershell
New-AzSphereDeviceCapabilityImage -ResourceGroupName joyer-test -CatalogName test2024 -DeviceGroupName testdevicegroup2 -ProductName product2024 -DeviceName DBB0E0CB8BD961A6129096E1E8A1375AC1FA274F030C08161B37AE3BC5A94F443BDB628CF257BC5BC810D8768C03B6F5CA301A35CD0169F56A49624255964560 -Capability 'ApplicationDevelopment' | Format-List
```

```output
Image : /Vz9XAEAAADMAAAA27Dgy4vZYaYSkJbh6KE3WsH6J08DDAgWGzeuO8WpT0Q722KM8le8W8gQ2HaMA7b1yjAaNc0BafVqSWJCVZZFYAsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA 
        AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANFg0TQMAAABJRCQADQAAANi1KEHCq1VBmjOKHzHtZ+yYQTwYazyNRbRvoHzwyZefU0cYAJZKiVhXTEtr0FMmMLhe+JiQpbh/AQAA 
        AERCKAAAAAAAAAAAAGZ3X2NvbmZpZwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAfAAAAMyzku8X6GdcOC1Sd9Cfozpmsiny2TzmjyXK7IvOhfA1B8nwdf1GoPa6PPVNMnn15TPIFK/P5/S2TD/mQrNh0Nk=
```

This command generates the capability image for specified device.


#### New-AzSphereDeviceGroup

#### SYNOPSIS
Create a DeviceGroup.
'.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

#### SYNTAX

+ CreateExpanded (Default)
```powershell
New-AzSphereDeviceGroup -CatalogName <String> -Name <String> -ProductName <String> -ResourceGroupName <String>
 [-SubscriptionId <String>] [-AllowCrashDumpsCollection <String>] [-Description <String>]
 [-OSFeedType <String>] [-RegionalDataBoundary <String>] [-UpdatePolicy <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ CreateViaJsonFilePath
```powershell
New-AzSphereDeviceGroup -CatalogName <String> -Name <String> -ProductName <String> -ResourceGroupName <String>
 -JsonFilePath <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ CreateViaJsonString
```powershell
New-AzSphereDeviceGroup -CatalogName <String> -Name <String> -ProductName <String> -ResourceGroupName <String>
 -JsonString <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Create a device group into specified catalog and product
```powershell
New-AzSphereDeviceGroup -CatalogName anotherCatalog -Name testgroup -ProductName test -ResourceGroupName Sphere-test
```

```output
AllowCrashDumpsCollection    : Disabled
Description                  : 
HasDeployment                : 
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/Sphere-test/providers/Microsoft.AzureSphere/catalogs/anotherCatalog/products/test/deviceGroups/testgroup
Name                         : testgroup
OSFeedType                   : Retail
ProvisioningState            : Succeeded
RegionalDataBoundary         : None
ResourceGroupName            : Sphere-test
RetryAfter                   : 
SystemDataCreatedAt          : 
SystemDataCreatedBy          : 
SystemDataCreatedByType      : 
SystemDataLastModifiedAt     : 
SystemDataLastModifiedBy     : 
SystemDataLastModifiedByType : 
Type                         : Microsoft.AzureSphere/catalogs/products/deviceGroups
UpdatePolicy                 : UpdateAll
```

This command creates a device group into specified catalog and product.


#### Get-AzSphereDeviceGroup

#### SYNOPSIS
Get a DeviceGroup.
'.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

#### SYNTAX

+ List (Default)
```powershell
Get-AzSphereDeviceGroup -CatalogName <String> -ProductName <String> -ResourceGroupName <String>
 [-SubscriptionId <String[]>] [-Filter <String>] [-Maxpagesize <Int32>] [-Skip <Int32>] [-Top <Int32>]
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ Get
```powershell
Get-AzSphereDeviceGroup -CatalogName <String> -Name <String> -ProductName <String> -ResourceGroupName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzSphereDeviceGroup -InputObject <ISphereIdentity> [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentityCatalog
```powershell
Get-AzSphereDeviceGroup -CatalogInputObject <ISphereIdentity> -Name <String> -ProductName <String>
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentityProduct
```powershell
Get-AzSphereDeviceGroup -Name <String> -ProductInputObject <ISphereIdentity> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: List device group for specific product with specified catalog and resource group
```powershell
Get-AzSphereDeviceGroup -CatalogName NewCatalog -ProductName MyProd815 -ResourceGroupName ps1-test
```

```output
AllowCrashDumpsCollection    : Disabled
Description                  : test device group
HasDeployment                : False
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/ps1-test/providers/Microsoft.AzureSphere/catalogs/NewCatalog/products/MyProd815/deviceGroups/Marketing
Name                         : Marketing
OSFeedType                   : Retail
ProvisioningState            : Succeeded
RegionalDataBoundary         : None
ResourceGroupName            : ps1-test
RetryAfter                   : 
SystemDataCreatedAt          : 
SystemDataCreatedBy          : 
SystemDataCreatedByType      : 
SystemDataLastModifiedAt     : 
SystemDataLastModifiedBy     : 
SystemDataLastModifiedByType : 
Type                         : Microsoft.AzureSphere/catalogs/products/deviceGroups
UpdatePolicy                 : UpdateAll
```

This command lists device groups.

+ Example 2: Get specific device group of specified product with specified catalog and resource group
```powershell
Get-AzSphereDeviceGroup -CatalogName NewCatalog -Name Marketing -ProductName MyProd815 -ResourceGroupName ps1-test
```

```output
AllowCrashDumpsCollection    : Disabled
Description                  : test device group
HasDeployment                : 
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/ps1-test/providers/Microsoft.AzureSphere/catalogs/NewCatalog/products/MyProd815/deviceGroups/Marketing
Name                         : Marketing
OSFeedType                   : Retail
ProvisioningState            : Succeeded
RegionalDataBoundary         : None
ResourceGroupName            : ps1-test
RetryAfter                   : 
SystemDataCreatedAt          : 
SystemDataCreatedBy          : 
SystemDataCreatedByType      : 
SystemDataLastModifiedAt     : 
SystemDataLastModifiedBy     : 
SystemDataLastModifiedByType : 
Type                         : Microsoft.AzureSphere/catalogs/products/deviceGroups
UpdatePolicy                 : UpdateAll
```

This command gets specific device group.


#### Remove-AzSphereDeviceGroup

#### SYNOPSIS
Delete a DeviceGroup.
'.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzSphereDeviceGroup -CatalogName <String> -Name <String> -ProductName <String>
 -ResourceGroupName <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait]
 [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzSphereDeviceGroup -InputObject <ISphereIdentity> [-DefaultProfile <PSObject>] [-AsJob] [-NoWait]
 [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentityCatalog
```powershell
Remove-AzSphereDeviceGroup -CatalogInputObject <ISphereIdentity> -Name <String> -ProductName <String>
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentityProduct
```powershell
Remove-AzSphereDeviceGroup -Name <String> -ProductInputObject <ISphereIdentity> [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Delete specified device group
```powershell
Remove-AzSphereDeviceGroup -CatalogName NewCatalog -Name Marketing -ProductName MyProd129 -ResourceGroupName Sphere-test
```

This command deletes specified device group.


#### Update-AzSphereDeviceGroup

#### SYNOPSIS
Update a DeviceGroup.
'.default' and '.unassigned' are system defined values and cannot be used for product or device group name.

#### SYNTAX

+ UpdateExpanded (Default)
```powershell
Update-AzSphereDeviceGroup -CatalogName <String> -Name <String> -ProductName <String>
 -ResourceGroupName <String> [-SubscriptionId <String>] [-AllowCrashDumpsCollection <String>]
 [-Description <String>] [-OSFeedType <String>] [-RegionalDataBoundary <String>] [-UpdatePolicy <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityCatalogExpanded
```powershell
Update-AzSphereDeviceGroup -CatalogInputObject <ISphereIdentity> -Name <String> -ProductName <String>
 [-AllowCrashDumpsCollection <String>] [-Description <String>] [-OSFeedType <String>]
 [-RegionalDataBoundary <String>] [-UpdatePolicy <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityExpanded
```powershell
Update-AzSphereDeviceGroup -InputObject <ISphereIdentity> [-AllowCrashDumpsCollection <String>]
 [-Description <String>] [-OSFeedType <String>] [-RegionalDataBoundary <String>] [-UpdatePolicy <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityProductExpanded
```powershell
Update-AzSphereDeviceGroup -Name <String> -ProductInputObject <ISphereIdentity>
 [-AllowCrashDumpsCollection <String>] [-Description <String>] [-OSFeedType <String>]
 [-RegionalDataBoundary <String>] [-UpdatePolicy <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait]
 [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaJsonFilePath
```powershell
Update-AzSphereDeviceGroup -CatalogName <String> -Name <String> -ProductName <String>
 -ResourceGroupName <String> -JsonFilePath <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaJsonString
```powershell
Update-AzSphereDeviceGroup -CatalogName <String> -Name <String> -ProductName <String>
 -ResourceGroupName <String> -JsonString <String> [-SubscriptionId <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Update device group
```powershell
Update-AzSphereDeviceGroup -ResourceGroupName joyer-test -CatalogName test2024 -ProductName product2024 -Name testdevicegroup -Description test
```

```output
AllowCrashDumpsCollection    : 
Description                  : test
HasDeployment                : 
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/joyer-test/providers/Microsoft.AzureSphere/catalogs/test2024/products/product2024/deviceGroups/testdevicegroup
Name                         : testdevicegroup
OSFeedType                   : 
ProvisioningState            : Succeeded
RegionalDataBoundary         : 
ResourceGroupName            : joyer-test
SystemDataCreatedAt          : 
SystemDataCreatedBy          : 
SystemDataCreatedByType      : 
SystemDataLastModifiedAt     : 
SystemDataLastModifiedBy     : 
SystemDataLastModifiedByType : 
Type                         : Microsoft.AzureSphere/catalogs/products/deviceGroups
UpdatePolicy                 : 
```

This command updates device group.


#### New-AzSphereImage

#### SYNOPSIS
Create a Image

#### SYNTAX

+ CreateExpanded (Default)
```powershell
New-AzSphereImage -CatalogName <String> -Name <String> -ResourceGroupName <String> [-SubscriptionId <String>]
 [-Image <String>] [-ImageId <String>] [-RegionalDataBoundary <String>] [-DefaultProfile <PSObject>] [-AsJob]
 [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ CreateViaJsonFilePath
```powershell
New-AzSphereImage -CatalogName <String> -Name <String> -ResourceGroupName <String> -JsonFilePath <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

+ CreateViaJsonString
```powershell
New-AzSphereImage -CatalogName <String> -Name <String> -ResourceGroupName <String> -JsonString <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Create a image for device group
```powershell
$imagefile1 = 'D:\GitHub\azure-powershell\src\Sphere\Sphere.Autorest\test\imagefile\AzureSphereBlink1.imagepackage'
$encf1 = [system.io.file]::ReadAllBytes($imagefile1)
$base64str = [system.convert]::ToBase64String($encf1)
New-AzSphereImage -CatalogName test2024 -ResourceGroupName joyer-test -Name 14a6729e-5819-4737-8713-37b4798533f8 -Image $base64str
```

```output
ComponentId                  : 42257ad6-382d-405f-b7cc-e110fbda2d0b
Description                  : 
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/joyer-test/providers/Microsoft.AzureSphere/catalogs/test2024/images/14a6729e-5819-4737-8713-37b4 
                               798533f8
ImageId                      : 14a6729e-5819-4737-8713-37b4798533f8
ImageName                    : 
ImageType                    : Applications
Name                         : 14a6729e-5819-4737-8713-37b4798533f8
PropertiesImage              : AzureSphereBlink1
ProvisioningState            : Succeeded
RegionalDataBoundary         : None
ResourceGroupName            : joyer-test
SystemDataCreatedAt          : 
SystemDataCreatedBy          : 
SystemDataCreatedByType      : 
SystemDataLastModifiedAt     : 
SystemDataLastModifiedBy     : 
SystemDataLastModifiedByType : 
Type                         : Microsoft.AzureSphere/catalogs/images
Uri                          : https://as3imgptint003.blob.core.windows.net/7de8a199-bb33-4eda-9600-583103317243/imagesaks/14a6729e-5819-4737-8713-37b4798533f8?skoid=cc6e3fcf-ab4d-4b0d-b3f9-9769 
                               604c1e52&sktid=72f988bf-86f1-41af-91ab-2d7cd011db47&skt=2024-02-23T02%3A31%3A35Z&ske=2024-02-23T03%3A36%3A35Z&sks=b&skv=2021-12-02&sv=2021-12-02&spr=https,http&se= 
                               2024-02-23T10%3A36%3A35Z&sr=b&sp=r&sig=7ZNckgqdazn9Af8fHUfsEEA2JrZO0SjDZpUgbh0jEZI%3D
```

This command creates a image for the device group.


#### Get-AzSphereImage

#### SYNOPSIS
Get a Image

#### SYNTAX

+ List (Default)
```powershell
Get-AzSphereImage -CatalogName <String> -ResourceGroupName <String> [-SubscriptionId <String[]>]
 [-Filter <String>] [-Maxpagesize <Int32>] [-Skip <Int32>] [-Top <Int32>] [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

+ Get
```powershell
Get-AzSphereImage -CatalogName <String> -Name <String> -ResourceGroupName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzSphereImage -InputObject <ISphereIdentity> [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentityCatalog
```powershell
Get-AzSphereImage -CatalogInputObject <ISphereIdentity> -Name <String> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: List images for specific catalog with specified resource group
```powershell
Get-AzSphereImage -CatalogName MyCatalog1 -ResourceGroupName ResourceGroup1
```

```output
Name                                 SystemDataCreatedAt SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDa 
                                                                                                                                                       taLastMo 
                                                                                                                                                       difiedBy 
                                                                                                                                                       Type     
----                                 ------------------- ------------------- ----------------------- ------------------------ ------------------------ -------- 
fa0bdab1-42bc-4871-84d5-fa05c8c0c895
5f05300e-b0e0-47d5-8255-e4bddb2ddd81
```

This command lists images.

+ Example 2: Get specific image with specified catalog and resource group
```powershell
Get-AzSphereImage -CatalogName anotherCatalog -Name 14a6729e-5819-4737-8713-37b4798533f8 -ResourceGroupName Sphere-test
```

```output
ComponentId                  : 42257ad6-382d-405f-b7cc-e110fbda2d0b
Description                  : 
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/Sphere-test/providers/Microsoft.AzureSphere/catalogs/anotherCatalog/images/14a6729e-5819-4737-8713-37b4798533f8
ImageId                      : 14a6729e-5819-4737-8713-37b4798533f8
ImageName                    : 
ImageType                    : Applications
Name                         : 14a6729e-5819-4737-8713-37b4798533f8
PropertiesImage              : AzureSphereBlink1
ProvisioningState            : Succeeded
RegionalDataBoundary         : None
ResourceGroupName            : Sphere-test
RetryAfter                   : 
SystemDataCreatedAt          : 
SystemDataCreatedBy          : 
SystemDataCreatedByType      : 
SystemDataLastModifiedAt     : 
SystemDataLastModifiedBy     : 
SystemDataLastModifiedByType : 
Type                         : Microsoft.AzureSphere/catalogs/images
Uri                          : https://as3imgptint003.blob.core.windows.net/9e508310-247c-4bba-add7-39169e9b7482/imagesaks/14a6729e-5819-4737-8713-37b4798533f8?skoid=41781aa8-e455-49b8-8db3-eb9232b581c2&sktid=72f988bf-86f1-41af-91ab-2d7cd011db47&skt=2024-01-30T08%3A27%3A57Z&ske=2024-01-30T09%3A32%3A57Z&sks=b&skv=2021-12-02&sv=2021-12-02&spr=https,http&se=2024-01-30T16%3A32%3A57Z&sr=b&sp=r&sig=EiMxkiDu6yHzV%2BB2LSqMp27AnJc3lKice%2Fm2AJ63r%2Bg%3D
```

This command get specific image.


#### New-AzSphereProduct

#### SYNOPSIS
Create a Product.
'.default' and '.unassigned' are system defined values and cannot be used for product name.

#### SYNTAX

+ CreateExpanded (Default)
```powershell
New-AzSphereProduct -CatalogName <String> -Name <String> -ResourceGroupName <String>
 [-SubscriptionId <String>] [-Description <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ CreateViaJsonFilePath
```powershell
New-AzSphereProduct -CatalogName <String> -Name <String> -ResourceGroupName <String> -JsonFilePath <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

+ CreateViaJsonString
```powershell
New-AzSphereProduct -CatalogName <String> -Name <String> -ResourceGroupName <String> -JsonString <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Create a product into specified catalog
```powershell
New-AzSphereProduct -CatalogName test2024 -ResourceGroupName joyer-test -Name product2024
```

```output
Description                  : 
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/joyer-test/providers/Microsoft.AzureSphere/catalogs/test2024/products/product2024
Name                         : product2024
ProvisioningState            : Succeeded
ResourceGroupName            : joyer-test
RetryAfter                   : 
SystemDataCreatedAt          : 
SystemDataCreatedBy          : 
SystemDataCreatedByType      : 
SystemDataLastModifiedAt     : 
SystemDataLastModifiedBy     : 
SystemDataLastModifiedByType : 
Type                         : Microsoft.AzureSphere/catalogs/products
```

This command create a product into specified catalog.


#### Get-AzSphereProduct

#### SYNOPSIS
Get a Product.
'.default' and '.unassigned' are system defined values and cannot be used for product name.

#### SYNTAX

+ List (Default)
```powershell
Get-AzSphereProduct -CatalogName <String> -ResourceGroupName <String> [-SubscriptionId <String[]>]
 [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ Get
```powershell
Get-AzSphereProduct -CatalogName <String> -Name <String> -ResourceGroupName <String>
 [-SubscriptionId <String[]>] [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentity
```powershell
Get-AzSphereProduct -InputObject <ISphereIdentity> [-DefaultProfile <PSObject>] [<CommonParameters>]
```

+ GetViaIdentityCatalog
```powershell
Get-AzSphereProduct -CatalogInputObject <ISphereIdentity> -Name <String> [-DefaultProfile <PSObject>]
 [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: List with specified catalog by resource group 
```powershell
Get-AzSphereProduct -ResourceGroupName joyer-test -CatalogName test2024
```

```output
Name        SystemDataCreatedAt SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType ResourceGroupName
----        ------------------- ------------------- ----------------------- ------------------------ ------------------------ ---------------------------- -----------------
product2024                                                                                                                                                joyer-test
product0207                                                                                                                                                joyer-test
```

This command gets list of product with specified catalog by resource group.

+ Example 2: Get product with specified catalog and resource group
```powershell
Get-AzSphereProduct -ResourceGroupName joyer-test -CatalogName test2024 -Name product2024
```

```output
Description                  : 222
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/joyer-test/providers/Microsoft.AzureSphere/catalogs/test2024/products/product2024
Name                         : product2024
ProvisioningState            : Succeeded
ResourceGroupName            : joyer-test
SystemDataCreatedAt          : 
SystemDataCreatedBy          : 
SystemDataCreatedByType      : 
SystemDataLastModifiedAt     : 
SystemDataLastModifiedBy     : 
SystemDataLastModifiedByType : 
Type                         : Microsoft.AzureSphere/catalogs/products
```

This command gets specific product with specified catalog and resource group.


#### Remove-AzSphereProduct

#### SYNOPSIS
Delete a Product.
'.default' and '.unassigned' are system defined values and cannot be used for product name'

#### SYNTAX

+ Delete (Default)
```powershell
Remove-AzSphereProduct -CatalogName <String> -Name <String> -ResourceGroupName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

+ DeleteViaIdentity
```powershell
Remove-AzSphereProduct -InputObject <ISphereIdentity> [-DefaultProfile <PSObject>] [-AsJob] [-NoWait]
 [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ DeleteViaIdentityCatalog
```powershell
Remove-AzSphereProduct -CatalogInputObject <ISphereIdentity> -Name <String> [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-PassThru] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Delete a product
```powershell
Remove-AzSphereProduct -CatalogName test2024 -ResourceGroupName joyer-test -Name product2024
```

This command deletes specified product.


#### Update-AzSphereProduct

#### SYNOPSIS
Update a Product.
'.default' and '.unassigned' are system defined values and cannot be used for product name.

#### SYNTAX

+ UpdateExpanded (Default)
```powershell
Update-AzSphereProduct -CatalogName <String> -Name <String> -ResourceGroupName <String>
 [-SubscriptionId <String>] [-Description <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityCatalogExpanded
```powershell
Update-AzSphereProduct -CatalogInputObject <ISphereIdentity> -Name <String> [-Description <String>]
 [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaIdentityExpanded
```powershell
Update-AzSphereProduct -InputObject <ISphereIdentity> [-Description <String>] [-DefaultProfile <PSObject>]
 [-AsJob] [-NoWait] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ UpdateViaJsonFilePath
```powershell
Update-AzSphereProduct -CatalogName <String> -Name <String> -ResourceGroupName <String> -JsonFilePath <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

+ UpdateViaJsonString
```powershell
Update-AzSphereProduct -CatalogName <String> -Name <String> -ResourceGroupName <String> -JsonString <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-AsJob] [-NoWait] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Update description
```powershell
Update-AzSphereProduct -ResourceGroupName joyer-test -CatalogName test2024 -Name product2024 -Description 2222
```

```output
Description                  : 2222
Id                           : /subscriptions/d1cd48f9-b94b-4645-9632-634b440db393/resourceGroups/joyer-test/providers/Microsoft.AzureSphere/catalogs/test2024/products/product2024
Name                         : product2024
ProvisioningState            : Succeeded
ResourceGroupName            : joyer-test
SystemDataCreatedAt          : 
SystemDataCreatedBy          : 
SystemDataCreatedByType      : 
SystemDataLastModifiedAt     : 
SystemDataLastModifiedBy     : 
SystemDataLastModifiedByType : 
Type                         : Microsoft.AzureSphere/catalogs/products
```

This command updates product description.


#### New-AzSphereProductDefaultDeviceGroup

#### SYNOPSIS
Generates default device groups for the product.
'.default' and '.unassigned' are system defined values and cannot be used for product name.

#### SYNTAX

+ Generate (Default)
```powershell
New-AzSphereProductDefaultDeviceGroup -CatalogName <String> -ProductName <String> -ResourceGroupName <String>
 [-SubscriptionId <String>] [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

+ GenerateViaIdentity
```powershell
New-AzSphereProductDefaultDeviceGroup -InputObject <ISphereIdentity> [-DefaultProfile <PSObject>] [-Confirm]
 [-WhatIf] [<CommonParameters>]
```

+ GenerateViaIdentityCatalog
```powershell
New-AzSphereProductDefaultDeviceGroup -CatalogInputObject <ISphereIdentity> -ProductName <String>
 [-DefaultProfile <PSObject>] [-Confirm] [-WhatIf] [<CommonParameters>]
```

#### EXAMPLES

+ Example 1: Generate default device groups for the product
```powershell
New-AzSphereProductDefaultDeviceGroup -CatalogName test2024 -ProductName product0207 -ResourceGroupName joyer-test
```

```output
Name                     SystemDataCreatedAt SystemDataCreatedBy SystemDataCreatedByType SystemDataLastModifiedAt SystemDataLastModifiedBy SystemDataLastModifiedByType ResourceGroupName
----                     ------------------- ------------------- ----------------------- ------------------------ ------------------------ ---------------------------- -----------------
Development                                                                                                                                                             joyer-test
Field Test                                                                                                                                                              joyer-test
Production                                                                                                                                                              joyer-test
Production OS Evaluation                                                                                                                                                joyer-test
Field Test OS Evaluation                                                                                                                                                joyer-test
```

This command generates default device groups for the product.


