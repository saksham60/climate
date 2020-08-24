import 'package:climate/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:climate/services/location.dart';
import 'package:climate/services/networking.dart';

class WeatherModel {
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  Future<dynamic> getCityWeather(String City) async{
    var url='$kopenUrl?q=$City&appid=$kApiKey&units=metric';
    NetworkHelper networkHelper=NetworkHelper(url);
    var decode = await networkHelper.getData();
    return decode;
  }

  Future<dynamic> getLocationWeather() async{
    Location l=Location();
    await l.getCurrentLocation();
    NetworkHelper networkHelper=NetworkHelper('$kopenUrl?lat=${l.lat}&lon=${l.long}&appid=$kApiKey&units=metric');
    var decode = await networkHelper.getData();
    return decode;
  }
}