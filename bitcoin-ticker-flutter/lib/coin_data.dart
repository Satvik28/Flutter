import 'package:http/http.dart' as http;
import 'dart:convert';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];
const String apiKey = 'CC4451B5-4707-4179-A436-AE8904E80390';
const String coinApiURL = 'https://rest.coinapi.io/v1/exchangerate';

class CoinData {
  Future getCoinData(String currencyName) async {
    Map<String, String> cryptoPrices = {};
    for (String crypto in cryptoList) {
      String requestURL = '$coinApiURL/$crypto/$currencyName?apikey=$apiKey';
      http.Response response = await http.get(
        Uri.parse(
          requestURL,
        ),
      );
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        var lastPrice = decodedData['rate'];
        cryptoPrices[crypto] = lastPrice.toStringAsFixed(0);
      } else {
        print(response.statusCode);
      }
    }
    return cryptoPrices;
  }
}
