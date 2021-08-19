param location string = 'westeurope'

module nsg 'modules/nsg.bicep' = {
   name: 'defaultNSG'
   params: {
     name: 'defaultNSG'
     location: location
   }
}

module rt 'modules/routetable.bicep' = {
   name: 'defaultRT'
}

module vnet 'modules/vnet.bicep' = {
  name: 'vnet'
  params: {
    location: 'westeurope'
    vnetname: 'test'
    nsgId: nsg.outputs.id
    rtId: rt.outputs.id
  }
}
