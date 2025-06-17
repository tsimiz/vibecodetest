@description('Static Web App name')
param staticWebAppName string = 'swa-vibecodetest-${uniqueString(resourceGroup().id)}'

@description('Location for all resources')
param location string = resourceGroup().location

@description('SKU for the Static Web App')
@allowed([
  'Free'
  'Standard'
])
param sku string = 'Free'

@description('Repository URL')
param repositoryUrl string = 'https://github.com/tsimiz/vibecodetest'

@description('Repository branch')
param repositoryBranch string = 'main'

@description('Repository token for GitHub integration')
@secure()
param repositoryToken string = ''

resource staticWebApp 'Microsoft.Web/staticSites@2022-09-01' = {
  name: staticWebAppName
  location: location
  sku: {
    name: sku
    tier: sku
  }
  properties: {
    repositoryUrl: repositoryUrl
    branch: repositoryBranch
    repositoryToken: repositoryToken
    buildProperties: {
      appLocation: '/'
      apiLocation: ''
      outputLocation: ''
    }
  }
}

@description('The hostname of the Static Web App')
output staticWebAppHostname string = staticWebApp.properties.defaultHostname

@description('The URL of the Static Web App')
output staticWebAppUrl string = 'https://${staticWebApp.properties.defaultHostname}'

@description('The name of the Static Web App')
output staticWebAppName string = staticWebApp.name

@description('The resource ID of the Static Web App')
output staticWebAppId string = staticWebApp.id