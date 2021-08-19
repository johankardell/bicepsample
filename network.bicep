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

module vnet 'modules/networking/vnet.bicep' = {
  name: 'defaultVnet'
  params: {
    location: 'westeurope'
    vnetname: 'defaultVnet'
    nsgId: nsg.outputs.id
    rtId: rt.outputs.id
  }
}
