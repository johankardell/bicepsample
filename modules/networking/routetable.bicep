param rtname string
param location string = 'westeurope'

resource rt 'Microsoft.Network/routeTables@2021-02-01' = {
  name: rtname
  location: location
  properties: {
    disableBgpRoutePropagation: true
    routes: [
      {
        name: 'toInternet'
        properties: {
          addressPrefix: '0.0.0.0/0'
          nextHopType: 'Internet'
        }
      }
    ]
  }
}

output id string = rt.id
