import 'package:flutter/material.dart';
import 'package:climate/utilities/constants.dart';


class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String City;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: FlatButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios,size:50),

                ),
              ),
              Container(
                child: TextField(
                  onChanged: (value){
                    City=value;
                  },
                  style: TextStyle(
                    color: Colors.black
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: Icon(Icons.location_city,color: Colors.white,),
                    hintText: 'Enter City Name',
                    hintStyle: TextStyle(
                      color: Colors.lightBlue,

                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide.none,

                    ),
                  ),
                ),
                padding: EdgeInsets.all(20),
              ),
              FlatButton(
                onPressed: (){
                  Navigator.pop(context,City);
                },
                child: Text('Get Weather',style: kButtonTextStyle,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
