%dw 2.0
---
{
  oAuth2TokenURL: 'https://anypoint.mulesoft.com/accounts/api/v2/oauth2/token',
  healthCheckURL: 'https://anypoint.mulesoft.com/standalone/api/v1/organizations/COLEM-BUSINESS-GROUP-ID-AQUI/environments/COLEM-AMBIENTE-ID-AQUI/gateways?pageNumber=0&pageSize=20&name=NOME-DO-FLEX-GATEWAY-A-SER-MONITORADO&status=',
  clientId: 'COLEM-CONNECTED-APP-CLIENTID-AQUI',
  clientSecret: 'COLEM-CONNECTED-APP-CLIENTSECRET-AQUI',
  env: 'devx'
}
