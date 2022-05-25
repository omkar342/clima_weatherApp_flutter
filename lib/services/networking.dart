import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{

  NetworkHelper({required this.url});

  final Uri url;

  Future getData() async {
    // var url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');
    // print(url);
    http.Response response = await http.get(url);
    if (response.statusCode == 200){
      String data = response.body;
      // print(data);
      return jsonDecode(data);
    }
    else{
      print(response.statusCode);
    }
  }
}