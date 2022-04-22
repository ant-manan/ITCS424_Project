import 'package:flutter/material.dart';
import 'dormitory.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class DormDetail extends StatefulWidget {
  final Dorm dorm;

  const DormDetail({
    Key? key,
    required this.dorm,
  }) : super(key: key);

  @override
  _DormDetailState createState() {
    return _DormDetailState();
  }
}

class _DormDetailState extends State<DormDetail> {

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.dorm.label),
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
                image: AssetImage(widget.dorm.imageUrl),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: EdgeInsets.all(5.0),),
            Text(
              widget.dorm.label,
              style: const TextStyle(fontSize: 22, color: Colors.white),
            ),
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.dorm.infos.length,
                itemBuilder: (BuildContext context, int index) {
                  final info = widget.dorm.infos[index];
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
                        builder : (context) => DormMapRoute(dorm: widget.dorm)) ,
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

class DormMapRoute extends StatefulWidget {
  final Dorm dorm;
  //final double lat;
  //final double long;


  DormMapRoute({Key? key, required this.dorm}) : super(key: key);

  @override
  _DormMapRouteState createState() => _DormMapRouteState();
}

class _DormMapRouteState extends State<DormMapRoute> {

  /* late GoogleMapController mapController;
  final LatLng _center = const LatLng(, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }*/

  @override
  Widget build(BuildContext context) {
    late GoogleMapController mapController;

    final LatLng _pos =  LatLng(widget.dorm.lat, widget.dorm.long);
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
          icon: BitmapDescriptor.defaultMarkerWithHue(18),
          position: LatLng(widget.dorm.lat, widget.dorm.long),
          markerId: MarkerId('Dorm'),
          infoWindow: InfoWindow(
            title: widget.dorm.label,
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
