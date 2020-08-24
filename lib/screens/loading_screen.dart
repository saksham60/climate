import 'package:climate/screens/location_screen.dart';
import 'package:climate/services/weather.dart';
import 'package:climate/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:async';
import 'package:climate/services/location.dart';
import 'package:climate/services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double lat;
  double lon;
  @override
  void initState() {
    super.initState();

    getLocation();

  }

  void getLocation() async{
WeatherModel w=WeatherModel();
var vi =await w.getLocationWeather();
print(vi);
// double temp=decode['main']['temp'];
//  condition=weatherData['weather'][0]['id'];
//  cityname=weatherData['name'];
//    print(temp);
//    print(decode);
//    Navigator.push(context, MaterialPageRoute(builder: (context){return LocationScreen(vi);}));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return LocationScreen(vi);}));

    //    Navigator.pop(context);

  }

//  void getData() async{
//    String url='http://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$kApiKey';
//    print(url);
//    http.Response r = await http.get(url);
//    print('the answer is ');
//
//    String s=r.body;
//    var decode=jsonDecode(s);
//
//    print(decode);
//    print(jsonDecode(s)['coord']['lon']);
//
//    print(temp);
//    print(condition);
//    print(cityname);
////    print('');
//
//  }
  void something(int n){
    if(n>10){
      throw 'n is greater than 10';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: SpinKitDoubleBounce(color: Colors.yellow,size: 100,),),);
  }
}
