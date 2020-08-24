import 'package:geolocator/geolocator.dart';


class Location{
  Location();
double lat;
double long;
Future<void> getCurrentLocation() async{
  try{
    Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low  );
  lat=position.latitude;
  long=position.longitude;
  }
  catch(e){
    print(e);
  }

//  Position getCurrentLocation(){
//  Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low  );
//  return position;
//}
}

}
