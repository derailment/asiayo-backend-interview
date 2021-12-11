#!flask/bin/python
from flask import Flask, jsonify, request

app = Flask(__name__)

currencies = {
  "TWD": {
    "TWD": 1,
    "JPY": 3.669,
    "USD": 0.03281
  },
  "JPY": {
    "TWD": 0.26956,
    "JPY": 1,
    "USD": 0.00885
  },
  "USD": {
    "TWD": 30.444,
    "JPY": 111.801,
    "USD": 1
  }
}

@app.route('/currency/api/v1.0/currencies', methods=['GET'])
def get_currencies():
    return jsonify({'currencies': currencies})

@app.route('/currency/api/v1.0/exchange', methods=['POST'])
def exchange_currency():
    if not request.json or not 'source' in request.json or not 'target' in request.json or not 'amount' in request.json:
        abort(400)
    source = request.json['source']    
    target = request.json['target']    
    amount = request.json['amount']    
   
    try:
        amount = float(amount)
    except ValueError:
        return jsonify({'result': amount + ' is not a number!' }), 200

    if amount < 0:
        return jsonify({'result': format_amount(amount) + ' is not a positive number!' }), 200
    
    if amount == 0:
        return jsonify({'result': 0 }), 200

    amount = float(amount)
    result = 1.00
    if source == 'TWD' and target == 'JPY':
        result = amount * currencies['TWD']['JPY']
    if source == 'TWD' and target == 'USD':
        result = amount * currencies['TWD']['USD']
    if source == 'TWD' and target == 'TWD':
        result = amount * currencies['TWD']['TWD']
    if source == 'USD' and target == 'JPY':
        result = amount * currencies['USD']['JPY']
    if source == 'USD' and target == 'USD':
        result = amount * currencies['USD']['USD']
    if source == 'USD' and target == 'JPY':
        result = amount * currencies['USD']['JPY']
    if source == 'JPY' and target == 'JPY':
        result = amount * currencies['JPY']['JPY']
    if source == 'JPY' and target == 'USD':
        result = amount * currencies['JPY']['USD']
    if source == 'JPY' and target == 'TWD':
        result = amount * currencies['JPY']['TWD']

    return jsonify({'result': source + " " + str(amount) + ' to ' + target + ' is ' + format_result(result) }), 200
      
    
def format_amount(amount):
    return "{:.2f}".format(amount)

def format_result(result):
    return str(result)


if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)
