import 'package:flutter/material.dart';
import 'restaurant.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RestaurantDetail extends StatefulWidget {
  final Restaurant restaurant;

  const RestaurantDetail({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  @override
  _RestaurantDetailState createState() {
    return _RestaurantDetailState();
  }
}

class _RestaurantDetailState extends State<RestaurantDetail> {

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.restaurant.label),
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
                image: AssetImage(widget.restaurant.imageUrl),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Padding(
              padding: EdgeInsets.all(5.0),),
            Text(
              widget.restaurant.label,
              style: const TextStyle(fontSize: 22, color: Colors.white),
            ),
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.restaurant.infos.length,
                itemBuilder: (BuildContext context, int index) {
                  final info = widget.restaurant.infos[index];
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
                        builder : (context) => ResMapRoute(res: widget.restaurant)) ,
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
            ],
        ),
      ),
    );
  }
}
class ResMapRoute extends StatefulWidget {
  final Restaurant res;

  ResMapRoute({Key? key, required this.res}) : super(key: key);

  @override
  _ResMapRouteState createState() => _ResMapRouteState();
}

class _ResMapRouteState extends State<ResMapRoute> {

  @override
  Widget build(BuildContext context) {
    late GoogleMapController mapController;

    final LatLng _pos =  LatLng(widget.res.lat, widget.res.long);
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
          icon: BitmapDescriptor.defaultMarkerWithHue(280),
          position: LatLng(widget.res.lat, widget.res.long),
          markerId: MarkerId('Restaurant'),
          infoWindow: InfoWindow(
            title: widget.res.label,
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