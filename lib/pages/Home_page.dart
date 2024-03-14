import 'dart:async';
import 'package:fab_circular_menu_plus/fab_circular_menu_plus.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Completer<GoogleMapController> _controller= Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 13,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children:[
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: GoogleMap(
                    mapType: MapType.normal,
                    initialCameraPosition: _kGooglePlex,
                    onMapCreated: (GoogleMapController controller){
                      _controller.complete(controller);
                    },
                  ),
                )
              ]
            )
          ],
        ),
      ),
      floatingActionButton: FabCircularMenuPlus(
          alignment: Alignment.bottomLeft,
          fabColor: Colors.lightGreenAccent,
          fabOpenColor: Colors.lightGreen,
          ringDiameter: 250.0,
          ringWidth: 60.0,
          ringColor: Colors.green[600],
          fabSize: 60.0,
          children: [
            IconButton(onPressed: (){
              setState(() {

              });
            }, icon: Icon(Icons.search_rounded)),
            IconButton(onPressed: (){
              setState(() {

              });
            }, icon: Icon(Icons.navigation_rounded))
          ]),
    );
  }
}
