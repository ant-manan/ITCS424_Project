import 'package:flutter/material.dart';
import 'clinic.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ClinicDetail extends StatefulWidget {
  final Clinic clinic;

  const ClinicDetail({
    Key? key,
    required this.clinic,
  }) : super(key: key);

  @override
  _ClinicDetailState createState() {
    return _ClinicDetailState();
  }
}

class _ClinicDetailState extends State<ClinicDetail> {

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.clinic.label),
      ),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),),
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.clinic.imageUrl),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: EdgeInsets.all(5.0),),
            Text(
              widget.clinic.label,
              style: const TextStyle(fontSize: 22, color: Colors.white),
            ),
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.clinic.infos.length,
                itemBuilder: (BuildContext context, int index) {
                  final info = widget.clinic.infos[index];
                  // 9
                  return Padding(
                      padding: EdgeInsets.all(7.0),
                      child: Text(
                          '${info.detail}',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                          )
                      )
                  );
                },
              ),
            ),
            ElevatedButton.icon(
                icon: Icon(
                  Icons.my_location,
                  color: Colors.white,
                  size: 25.0,
                ),
                label: Text('Map'),
                onPressed: () {
                  // Pushing a route Directly
                  Navigator.push(
                    context ,
                    MaterialPageRoute (
                        builder : (context) => CliMapRoute(clinic: widget.clinic)) ,
                        //settings: RouteSettings(
                   // lat: widget.clinic.lat,//  arguments: this.clinic,
                        //),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.lightGreen) // Button color
            ),
            Padding(
              padding: EdgeInsets.all(20.0),),
            // 6
          ],
        ),
      ),
    );
  }
}

class CliMapRoute extends StatefulWidget {
  final Clinic clinic;
  //final double lat;
  //final double long;


  CliMapRoute({Key? key, required this.clinic}) : super(key: key);

  @override
  _CliMapRouteState createState() => _CliMapRouteState();
}

class _CliMapRouteState extends State<CliMapRoute> {

 /* late GoogleMapController mapController;
  final LatLng _center = const LatLng(, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }*/

  @override
  Widget build(BuildContext context) {
    late GoogleMapController mapController;

    final LatLng _pos =  LatLng(widget.clinic.lat, widget.clinic.long);
    void _onMapCreated(GoogleMapController controller) {
      mapController = controller;
    }
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Map'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          markers: muMarker(),
          initialCameraPosition: CameraPosition(
            target: _pos,
            zoom: 15.0,
          ),
        ),
      ),
    );
  }

  Set<Marker> muMarker() {
    return <Marker>[
      Marker(
          icon: BitmapDescriptor.defaultMarkerWithHue(330),
          position: LatLng(widget.clinic.lat, widget.clinic.long),
          markerId: MarkerId('Clinic'),
          infoWindow: InfoWindow(
            title: widget.clinic.label,
          )
      ),
      Marker(
          position: LatLng(13.795062592553771, 100.32562111414498),
          markerId: MarkerId('MU'),
          infoWindow: InfoWindow(
            title: 'Mahidol University, Salaya Campus',
          )
      ),
    ].toSet();
  }
}
