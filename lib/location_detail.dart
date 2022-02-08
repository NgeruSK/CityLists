import 'package:bamboo_app/models/location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LocationDetail extends StatelessWidget{
  Location myLocation;
  LocationDetail(this.myLocation);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(myLocation.name),
      ),
          body: Column(
          //  mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           // children: _renderFacts(myLocation) ,
            children: _renderBody(context, myLocation),
          ),
    );

  }

  List<Widget> _renderBody(BuildContext context, Location location)
  {
    var result = <Widget>[];
    result.add(_bannerImage(location.url, 170.0));
    for(int i = 0; i<myLocation.facts.length; i++)
    {
      result.add(_sectionTitle(myLocation.facts[i].title));
      result.add(_sectionText(myLocation.facts[i].text));
    }

    return result;

  }


  List<Widget> _renderFacts(Location myLocation) {
    var res = <Widget>[];
    for(int i = 0; i<myLocation.facts.length; i++)
      {
        res.add(_sectionTitle(myLocation.facts[i].title));
        res.add(_sectionText(myLocation.facts[i].text));
      }

    return res;
  }

  Widget _sectionTitle(String title) {
    return Text(title, style: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, fontSize: 18));
  }

  Widget _sectionText(String text) {
    return Text(text, style: TextStyle(wordSpacing: 5, letterSpacing: 1));
  }

  Widget _bannerImage(String url, double height)
  {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit:BoxFit.fitWidth),
    );
  }
}
