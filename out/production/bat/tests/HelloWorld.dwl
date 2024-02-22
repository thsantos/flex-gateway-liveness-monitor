import * from bat::BDD
import * from bat::Assertions
---
suite("Hello world suite") in [
  it must 'answer 200' in [
    GET `https://httpbin.org/get` with {} assert [
      $.response.status mustEqual 200
    ] execute [
     //log('Configuration:', config.env)
     log('Configuration:', 'ok')
    ]
  ]
]