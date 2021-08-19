# Avoid using complete deployments since it always wants to recreate the vnet because of the referenced object. Bug in this code or in az deployment?

#az deployment group create --name test --template-file ./main.bicep -g rg-lab-Johan.Kardell --confirm-with-what-if --mode Complete
az deployment group create --name test --template-file ./main.bicep -g rg-lab-Johan.Kardell --confirm-with-what-if --mode Incremental
