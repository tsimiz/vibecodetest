@description('The name of the Static Web App')
param staticWebAppName string = 'vibecodetestapp'

@description('The location for the Static Web App')
param location string = resourceGroup().location

@description('The SKU tier for the Static Web App')
@allowed([
  'Free'
  'Standard'
])
param sku string = 'Free'

resource staticWebApp 'Microsoft.Web/staticSites@2023-01-01' = {
  name: staticWebAppName
  location: location
  sku: {
    name: sku
    tier: sku
  }
  properties: {
    repositoryUrl: 'https://github.com/tsimiz/vibecodetest'
    branch: 'main'
    buildProperties: {
      appLocation: '/'
      outputLocation: '/'
      appBuildCommand: ''
      apiBuildCommand: ''
    }
  }
}

@description('The default hostname of the Static Web App')
output defaultHostname string = staticWebApp.properties.defaultHostname

@description('The resource ID of the Static Web App')
output staticWebAppId string = staticWebApp.id