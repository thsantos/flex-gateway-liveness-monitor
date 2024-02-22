import * from bat::BDD
import * from bat::Assertions
import * from bat::Mutable


var context = HashMap()
---
describe("Monitoring Flex Gateway health checks using connected app token") in [
  it("Fetch OAuth2 Token") in [
    POST `$(config.oAuth2TokenURL)` with {
      body:{
        "client_id"     : "$(config.clientId)",
        "client_secret" : "$(config.clientSecret)",
        "grant_type"    : "client_credentials"
      }
    } execute [
      context.set('token', $.response.body.access_token),
      //log('Token:', context.get('token'))
    ] assert [
      $.response.status mustEqual 200
    ]
  ],
  it("Check if FlexGateway Health Check is equal to CONNECTED") in [
    GET `$(config.healthCheckURL)` with {
      headers: {
        Authorization: 'bearer ' ++ context.get('token')
      }
    } execute [
      //log('MuleSoft Control Plane Response:', $.response.body)
    ] assert [
      $.response.status mustEqual 200,
      $.response.body.content[0].status mustEqual "CONNECTED"
    ]
  ]
]