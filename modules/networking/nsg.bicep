param location string
param name string

resource nsg 'Microsoft.Network/networkSecurityGroups@2021-02-01' = {
  name: name
  location: location
}

output nsgid string = nsg.id
