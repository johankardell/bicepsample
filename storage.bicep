param location string = 'westeurope'

module sa 'modules/storage/storageaccount.bicep' = {
  name: 'sa'
  params: {
    location: location
    saname: 'satestjoka'
  }
}
