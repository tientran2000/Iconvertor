import 'dart:convert';

import 'package:http/http.dart' as http;
class ApiClient{
  final Uri url=Uri.https("free.currconv.com", "/api/v7/currencies",{"apiKey":"23aae9838378ea1276b0"});
  Future<List<String>> getCurrencies() async{
    http.Response res=await http.get(url);

    if(res.statusCode==200){
      var body=jsonDecode(res.body);
      var list=body["results"];
      List<String> currencies=(list.keys).toList();
      print(currencies);
      return currencies;
    }
    else{
      print('lỗi');
      throw Exception("Không kết nối được với api");
    }
  }
  Future<double> getRate(String from, String to) async{
    final Uri rateurl=Uri.https("free.currconv.com", "/api/v7/convert",
        {"apiKey":"23aae9838378ea1276b0",
          "q":"${from}_${to}","compact":"ultra"});
    http.Response res=await http.get(rateurl);
    if(res.statusCode==200){
      var body=jsonDecode(res.body);
      return body["${from}_${to}"];
    }else{
      throw Exception(" Không lấy được giá trị chuyển đổi");
    }
  }
}