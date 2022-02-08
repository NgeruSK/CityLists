import 'package:bamboo_app/location_list.dart';
import 'package:bamboo_app/mockData/location_mocks.dart';
import 'package:flutter/material.dart';

import 'location_detail.dart';

void main() {
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.orange),
    home: LocationList(LocationMock.fetchAll()),
    //home: LocationDetail(LocationMock.GenerateLocation()),
  ));
}



