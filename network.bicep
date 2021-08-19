param location string = 'westeurope'

module nsg 'modules/networking/nsg.bicep' = {
  name: 'defaultNSG'
  params: {
    name: 'defaultNSG'
    location: location
  }
}

module rt 'modules/networking/routetable.bicep' = {
  name: 'defaultRT'
  params: {
    location: location
    rtname: 'defaultRT'
  }
}

module firstVnet 'modules/networking/vnet.bicep' = {
  name: 'defaultVnet'
  params: {
    location: location
    vnetname: 'firstVnet'
    nsgId: nsg.outputs.id
    rtId: rt.outputs.id
  }
}


module secondVnet 'modules/networking/vnet.bicep' = {
  name: 'secondVnet'
  params: {
    location: location
    vnetname: 'secondVnet'
    nsgId: nsg.outputs.id
    rtId: rt.outputs.id
  }
}
