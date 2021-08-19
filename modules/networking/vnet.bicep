param vnetname string
param location string
param nsgId string
param rtId string

resource virtualnetwork 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  location: location

  name: vnetname
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.1.0/24'
        '172.16.0.0/24'
      ]
    }
    subnets: [
      {
        name: 'first-subnet'
        properties: {
          addressPrefix: '172.16.0.0/24'
          networkSecurityGroup: {
            id: nsgId
          }
          routeTable: {
            id: rtId
          }
        }
      }
      {
        name: 'second-subnet'
        properties: {
          addressPrefix: '10.0.1.0/24'
          networkSecurityGroup: {
            id: nsgId
          }
          routeTable: {
            id: rtId
          }
        }
      }
    ]
  }
}
