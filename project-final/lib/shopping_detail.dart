import 'package:flutter/material.dart';
import 'shopping.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShoppingDetail extends StatefulWidget {
  final Shopping shopping;

  const ShoppingDetail({
    Key? key,
    required this.shopping,
  }) : super(key: key);

  @override
  _ShoppingDetailState createState() {
    return _ShoppingDetailState();
  }
}

class _ShoppingDetailState extends State<ShoppingDetail> {

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.shopping.label),
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
                image: AssetImage(widget.shopping.imageUrl),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: EdgeInsets.all(5.0),),
            Text(
              widget.shopping.label,
              style: const TextStyle(fontSize: 22, color: Colors.white),
            ),
            Expanded(
              // 8
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.shopping.infos.length,
                itemBuilder: (BuildContext context, int index) {
                  final info = widget.shopping.infos[index];
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
                        builder : (context) => ShopMapRoute(shop: widget.shopping)) ,
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

class ShopMapRoute extends StatefulWidget {
  final Shopping shop;
  //final double lat;
  //final double long;


  ShopMapRoute({Key? key, required this.shop}) : super(key: key);

  @override
  _ShopMapRouteState createState() => _ShopMapRouteState();
}

class _ShopMapRouteState extends State<ShopMapRoute> {

  @override
  Widget build(BuildContext context) {
    late GoogleMapController mapController;

    final LatLng _pos =  LatLng(widget.shop.lat, widget.shop.long);
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
          icon: BitmapDescriptor.defaultMarkerWithHue(180),
          position: LatLng(widget.shop.lat, widget.shop.long),
          markerId: MarkerId('Shop'),
          infoWindow: InfoWindow(
            title: widget.shop.label,
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
