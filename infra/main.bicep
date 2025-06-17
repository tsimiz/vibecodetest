@description('The name of the static web app.')
param staticWebAppName string

@description('The location for the resource.')
param location string = resourceGroup().location

@description('SKU for Static Web App')
param sku string = 'Free'

resource staticWebApp 'Microsoft.Web/staticSites@2022-03-01' = {
  name: staticWebAppName
  location: location
  sku: {
    name: sku
    tier: sku
  }
  properties: {
    repositoryUrl: 'https://github.com/${deployment().properties.templateHash}' // Placeholder; not required for manual deploy
    branch: 'main'
    buildProperties: {
      appLocation: '/'
      apiLocation: ''
      outputLocation: '/'
    }
  }
}

output staticWebAppUrl string = staticWebApp.properties.defaultHostname
