param saname string
param location string

resource sa 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: saname
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    supportsHttpsTrafficOnly: true
  }
}
