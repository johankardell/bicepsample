var location = resourceGroup().location

module networking 'network.bicep' = {
  name: 'networking'
  params: {
    location: location
  }
}

module storage 'storage.bicep' = {
  name: 'storage'
  params: {
    location: location
  }
}
