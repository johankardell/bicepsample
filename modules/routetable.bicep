param rtname string
param location string = 'westeurope'

resource rt 'Microsoft.Network/routeTables@2021-02-01' = {
  name: rtname
  location: location
}

output id string = rt.id