!#/bin/bash

curl -i http://127.0.0.1:5000/currency/api/v1.0/currencies

curl -i -H "Content-Type: application/json" -X POST -d '{"source":"TWD", "target":"JPY", "amount":"abc"}' http://127.0.0.1:5000/currency/api/v1.0/exchange
curl -i -H "Content-Type: application/json" -X POST -d '{"source":"TWD", "target":"JPY", "amount":"-1"}' http://127.0.0.1:5000/currency/api/v1.0/exchange
curl -i -H "Content-Type: application/json" -X POST -d '{"source":"TWD", "target":"JPY", "amount":"0"}' http://127.0.0.1:5000/currency/api/v1.0/exchange
curl -i -H "Content-Type: application/json" -X POST -d '{"source":"TWD", "target":"JPY", "amount":"123"}' http://127.0.0.1:5000/currency/api/v1.0/exchange
curl -i -H "Content-Type: application/json" -X POST -d '{"source":"TWD", "target":"JPY", "amount":"1234"}' http://127.0.0.1:5000/currency/api/v1.0/exchange
curl -i -H "Content-Type: application/json" -X POST -d '{"source":"TWD", "target":"JPY", "amount":"1234567"}' http://127.0.0.1:5000/currency/api/v1.0/exchange
curl -i -H "Content-Type: application/json" -X POST -d '{"source":"TWD", "target":"JPY", "amount":"1234.567"}' http://127.0.0.1:5000/currency/api/v1.0/exchange
curl -i -H "Content-Type: application/json" -X POST -d '{"source":"TWD", "target":"USD", "amount":"2"}' http://127.0.0.1:5000/currency/api/v1.0/exchange
curl -i -H "Content-Type: application/json" -X POST -d '{"source":"TWD", "target":"TWD", "amount":"2"}' http://127.0.0.1:5000/currency/api/v1.0/exchange
curl -i -H "Content-Type: application/json" -X POST -d '{"source":"USD", "target":"JPY", "amount":"2"}' http://127.0.0.1:5000/currency/api/v1.0/exchange
curl -i -H "Content-Type: application/json" -X POST -d '{"source":"USD", "target":"USD", "amount":"2"}' http://127.0.0.1:5000/currency/api/v1.0/exchange
curl -i -H "Content-Type: application/json" -X POST -d '{"source":"USD", "target":"TWD", "amount":"2"}' http://127.0.0.1:5000/currency/api/v1.0/exchange
curl -i -H "Content-Type: application/json" -X POST -d '{"source":"JPY", "target":"JPY", "amount":"2"}' http://127.0.0.1:5000/currency/api/v1.0/exchange
curl -i -H "Content-Type: application/json" -X POST -d '{"source":"JPY", "target":"USD", "amount":"2"}' http://127.0.0.1:5000/currency/api/v1.0/exchange
curl -i -H "Content-Type: application/json" -X POST -d '{"source":"JPY", "target":"TWD", "amount":"2"}' http://127.0.0.1:5000/currency/api/v1.0/exchange

