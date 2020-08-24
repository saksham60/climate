import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class NetworkHelper{
NetworkHelper(this.url);
final String url;

 Future getData() async
  {
  http.Response r = await http.get(url);
  String data='';
  var decode;
  if(r.statusCode==200){
    data=r.body;
    var decode=jsonDecode(data);
    return decode;
  }
  else{
    throw Exception('getting Error $r.statusCode');
  }

  }
}

