import 'package:bamboo_app/models/location.dart';
import 'package:bamboo_app/models/location_fact.dart';

class LocationMock extends Location{
  LocationMock(String name, String url, List<LocationFact> facts) : super(name, url, facts);

  static List<Location> genLocations = [
    Location(   'Nairobi',
        'https://picsum.photos/200/300',[
          LocationFact('age', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore '
              'magna aliqua. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Egestas egestas'
              ' fringilla phasellus faucibus scelerisque eleifend.'),
          LocationFact('history', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore '
              'magna aliqua. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. '
              'Egestas egestas fringilla phasellus faucibus scelerisque eleifend.')
        ]),
    Location(   'Kisumu',
        'https://picsum.photos/200/300',[
          LocationFact('age', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore '
              'magna aliqua. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Egestas egestas'
              ' fringilla phasellus faucibus scelerisque eleifend.'),
          LocationFact('history', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore '
              'magna aliqua. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. '
              'Egestas egestas fringilla phasellus faucibus scelerisque eleifend.')
        ]),
    Location(   'Abidjan',
        'https://picsum.photos/200/300',[
          LocationFact('age', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore '
              'magna aliqua. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. Egestas egestas'
              ' fringilla phasellus faucibus scelerisque eleifend.'),
          LocationFact('history', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore '
              'magna aliqua. Egestas tellus rutrum tellus pellentesque eu tincidunt tortor. '
              'Egestas egestas fringilla phasellus faucibus scelerisque eleifend.')
        ])
  ];
  static Location fetchAny()
  {
   return LocationMock.genLocations[0];
  }

  static List<Location> fetchAll()
  {
    return LocationMock.genLocations;
  }

}