import 'package:bamboo_app/location_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'models/location.dart';

class LocationList extends StatelessWidget{
  final List<Location> myLocations;

  LocationList(this.myLocations);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Color.fromRGBO(255,140,0, 5)));
    return Scaffold(
      appBar: AppBar(title: Text("Locations List",style: TextStyle(color:Colors.white)),backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: myLocations.length,
        itemBuilder: (context, index){
          return ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: _itemThumbnail(this.myLocations[index]),
            trailing: _itemTitle(this.myLocations[index]),
            onTap: (){
           //   print("good day ${this.myLocations[index].name}");
              Navigator.push(context, MaterialPageRoute(builder:
              (context) => LocationDetail(this.myLocations[index]),
              ));
            },
          );
        },
      ),
    );
  }
  Widget _itemThumbnail(Location myLocation) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100),
      child: Image.network("", fit: BoxFit.fitWidth,),
    );

  }

  Widget _itemTitle(Location myLocation) {
    return Text(myLocation.name, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),);
  }

}
