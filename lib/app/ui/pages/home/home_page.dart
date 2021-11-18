import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = HomeController();
  final _initialCameraPosition =
      const CameraPosition(target: LatLng(13.4795302, -88.0937663), zoom: 9);

  @override
  Widget build(BuildContext context) {
    final Set<Marker> listadoMarcadores = {};

    listadoMarcadores.add(const Marker(
      markerId: MarkerId("1"),
      position: LatLng(13.344894886444061, -88.44018359488776),
      infoWindow: InfoWindow(
          title: "Telollevo SV Usulután", snippet: "Sucursal Usulután"),
      icon: BitmapDescriptor.defaultMarker,
    ));

    listadoMarcadores.add(const Marker(
        markerId: MarkerId("2"),
        position: LatLng(13.480729285587739, -88.17839361633683),
        infoWindow: InfoWindow(
            title: "Telollevo SV San Miguel", snippet: "Sucursal San Miguel")));

    listadoMarcadores.add(const Marker(
        markerId: MarkerId("3"),
        position: LatLng(13.695052971906396, -88.10415182820715),
        infoWindow: InfoWindow(
            title: "Telollevo SV Morazan", snippet: "Sucursal Morazan"),
        icon: BitmapDescriptor.defaultMarker));

    listadoMarcadores.add(const Marker(
        markerId: MarkerId("3"),
        position: LatLng(13.340522193850736, -87.85422072708708),
        infoWindow: InfoWindow(
            title: "Telollevo SV La Union", snippet: "Sucursal La union"),
        icon: BitmapDescriptor.defaultMarker));

    return Scaffold(
        appBar: AppBar(
          title: const Text("Telollevo SV"),
        ),
        body: Center(
            child: GoogleMap(
          onMapCreated: _controller.onMapCreated,
          initialCameraPosition: _initialCameraPosition,
          myLocationButtonEnabled: false,
          zoomControlsEnabled: true,
          markers: listadoMarcadores,
        )));
  }
}
