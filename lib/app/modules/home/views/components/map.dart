// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter_web/google_maps_flutter_web.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class MapScreen extends StatefulWidget {
//   const MapScreen({super.key});
//
//   @override
//   _MapScreenState createState() => _MapScreenState();
// }
//
// class _MapScreenState extends State<MapScreen> {
//   late GoogleMapController _mapController;
//   bool _isSatelliteView = false;
//
//   // Define a fixed destination (e.g., San Francisco)
//   final LatLng _destination = LatLng(37.7749, -122.4194);
//
//   // Called when the map is created.
//   void _onMapCreated(GoogleMapController controller) {
//     _mapController = controller;
//   }
//
//   // Toggle between normal and satellite views.
//   void _toggleMapType() {
//     setState(() {
//       _isSatelliteView = !_isSatelliteView;
//     });
//   }
//
//   // // Zoom in on the map.
//   // void _zoomIn() {
//   //   _mapController.animateCamera(CameraUpdate.zoomIn());
//   // }
//   //
//   // // Zoom out on the map.
//   // void _zoomOut() {
//   //   _mapController.animateCamera(CameraUpdate.zoomOut());
//   // }
//
//   // Opens Google Maps for directions to the destination.
//   Future<void> _openGoogleMaps() async {
//     // Leaving origin empty will let Google Maps use the user's default location.
//     final url =
//         "https://www.google.com/maps/dir/?api=1&destination=${_destination.latitude},${_destination.longitude}";
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Map View'),
//       ),
//       body: Stack(
//         children: [
//           // Google Map Widget
//           GoogleMap(
//             onMapCreated: _onMapCreated,
//             initialCameraPosition: CameraPosition(
//               target: _destination,
//               zoom: 14,
//             ),
//             markers: {
//               Marker(
//                 markerId: MarkerId('destination'),
//                 position: _destination,
//                 infoWindow: InfoWindow(title: 'Destination'),
//               ),
//             },
//             mapType: _isSatelliteView ? MapType.satellite : MapType.normal,
//             // Since we don't need current location, disable related features.
//             myLocationEnabled: false,
//             myLocationButtonEnabled: false,
//           ),
//
//           // Floating buttons for zoom and map type toggle.
//           Positioned(
//             bottom: 20,
//             right: 10,
//             child: Column(
//               children: [
//                 // FloatingActionButton(
//                 //   // onPressed: _zoomIn,
//                 //   heroTag: "zoom_in",
//                 //   child: Icon(Icons.zoom_in),
//                 // ),
//                 // SizedBox(height: 10),
//                 // FloatingActionButton(
//                 //   onPressed: _zoomOut,
//                 //   heroTag: "zoom_out",
//                 //   child: Icon(Icons.zoom_out),
//                 // ),
//                 SizedBox(height: 10),
//                 FloatingActionButton(
//                   onPressed: _toggleMapType,
//                   heroTag: "toggle_map_type",
//                   child: Icon(Icons.layers),
//                 ),
//               ],
//             ),
//           ),
//
//           // Get Directions Card at the bottom.
//           Positioned(
//             bottom: 80,
//             left: 20,
//             right: 20,
//             child: Card(
//               elevation: 5,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(12),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       "Get Directions",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       "Destination: ${_destination.latitude}, ${_destination.longitude}",
//                       style: TextStyle(fontSize: 14),
//                     ),
//                     SizedBox(height: 10),
//                     ElevatedButton(
//                       onPressed: _openGoogleMaps,
//                       child: Text("Open in Google Maps"),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
