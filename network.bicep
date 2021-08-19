param location string = 'westeurope'

module nsgModule 'modules/networking/nsg.bicep' = {
  name: 'defaultNSG'
  params: {
    name: 'defaultNSG'
    location: location
  }
}

module routeTableModule 'modules/networking/routetable.bicep' = {
  name: 'defaultRT'
  params: {
    rtname: 'defaultRT'
    location: location
  }
}

module vnetModule 'modules/networking/vnet.bicep' = {
  name: 'defaultVnet'
  params: {
    vnetname: 'firstVnet'
    location: location
    nsgId: nsgModule.outputs.nsgid
    rtId: routeTableModule.outputs.rtid
  }
}
