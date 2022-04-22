import 'package:flutter/material.dart';
import 'restaurant.dart';
import 'restaurant_detail.dart';
import 'dormitory.dart';
import 'dormitory_detail.dart';
import 'shopping.dart';
import 'shopping_detail.dart';
import 'clinic.dart';
import 'clinic_detail.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

/*
AIzaSyD5XuWMaJGJqkEUcdayOtmlLyccJdX5b0k

 */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AROUND MU',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: const Color(0xFF000000),

      ),
      home: const FirstRoute(),
    );
  }
}

// Main page
class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AROUND MU'),
      ),
      body: Center(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0), // Space
                child: Image.asset('assets/images/tram10.jpg', height: 300),
              ),
                ElevatedButton(
                  child: const Text('Start'),
                  onPressed: () {
                    // Pushing a route Direcly
                    Navigator.push(
                      context ,
                      MaterialPageRoute (builder :
                          (context) => const SecondRoute ()) ,
                    );
                  },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.deepPurpleAccent) // Button color
                ),
                ]
          )
      ),
    );
  }
}

// Menu page
class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
      ),
      body: Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // Dormitory button
              ElevatedButton.icon(
                  icon: Icon(
                    Icons.domain,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  label: Text('Dormitory'),
                  onPressed: () {
                    // Pushing a route Direcly
                    Navigator.push(
                      context ,
                      MaterialPageRoute (builder :
                          (context) => const DormitoryRoute()) ,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.brown) // Button color
              ),
              Padding(
                  padding: EdgeInsets.all(10.0) // Space
              ),

              // Restaurant button
              ElevatedButton.icon(
                  icon: Icon(
                    Icons.restaurant,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  label: Text('Restaurant'),
                  onPressed: () {
                    // Pushing a route Directly
                    Navigator.push(
                      context ,
                      MaterialPageRoute (builder :
                          (context) => const RestaurantRoute()) ,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple) // Button color
              ),
              Padding(
                  padding: EdgeInsets.all(10.0) // Space
              ),

              // Clinic button
              ElevatedButton.icon(
                  icon: Icon(
                    Icons.medical_services,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  label: Text('Health'),
                  onPressed: () {
                    // Pushing a route Directly
                    Navigator.push(
                      context ,
                      MaterialPageRoute (builder :
                          (context) => const ClinicRoute()) ,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.pink.shade300) // Button color
              ),
              Padding(
                  padding: EdgeInsets.all(10.0) // Space
              ),

              // Shopping button
              ElevatedButton.icon(
                  icon: Icon(
                    Icons.local_grocery_store,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  label: Text('Shopping'),
                  onPressed: () {
                    // Pushing a route Directly
                    Navigator.push(
                      context ,
                      MaterialPageRoute (builder :
                          (context) => const ShoppingRoute()) ,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue) // Button color
              ),
              Padding(
                  padding: EdgeInsets.all(10.0) // Space
              ),

              // Map button
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
                      MaterialPageRoute (builder :
                          (context) => const MapRoute()) ,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreen) // Button color
              ),
            ]
        ),
      ),
    );
  }
}

// DormitoryRoute page
class DormitoryRoute extends StatelessWidget {
  const DormitoryRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
      appBar: AppBar(
        title: Text('Dormitory'),
      ),
      // 3
      body: SafeArea(
        // 4
        child: ListView.builder(
          // 5
          itemCount: Dorm.samples.length,
          // 6
          itemBuilder: (BuildContext context, int index) {
            // 7
            // 7
            return GestureDetector(
              // 8
              onTap: () {
                // 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      return DormDetail(dorm: Dorm.samples[index]);
                    },
                  ),
                );
              },
              // 11
              child: buildDormCard(Dorm.samples[index]),
            );
          },
        ),
      ),
    );
  }
  Widget buildDormCard(Dorm dorm) {
    return Card(
      // 1
      elevation: 2.0,
      // 2
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(dorm.imageUrl)),
            // 5
            const SizedBox(
              height: 14.0,
            ),
            // 6
            Text(
              dorm.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            )
          ],
        ),
      ),
    );
  }
}


// RestaurantRoute page
class RestaurantRoute extends StatelessWidget {
  const RestaurantRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
      appBar: AppBar(
        title: Text('Restaurant'),
      ),
      // 3
      body: SafeArea(
        // 4
        child: ListView.builder(
          // 5
          itemCount: Restaurant.samples.length,
          // 6
          itemBuilder: (BuildContext context, int index) {
            // 7
            // 7
            return GestureDetector(
              // 8
              onTap: () {
                // 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      return RestaurantDetail(restaurant: Restaurant.samples[index]);
                    },
                  ),
                );
              },
              // 11
              child: buildRestaurantCard(Restaurant.samples[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildRestaurantCard(Restaurant restaurant) {
    return Card(
      // 1
      elevation: 2.0,
      // 2
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(restaurant.imageUrl)),
            // 5
            const SizedBox(
              height: 14.0,
            ),
            // 6
            Text(
              restaurant.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ClinicRoute page
class ClinicRoute extends StatelessWidget {
  const ClinicRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
      appBar: AppBar(
        title: Text('Health'),
      ),
      // 3
      body: SafeArea(
        // 4
        child: ListView.builder(
          // 5
          itemCount: Clinic.samples.length,
          // 6
          itemBuilder: (BuildContext context, int index) {
            // 7
            // 7
            return GestureDetector(
              // 8
              onTap: () {
                // 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      return ClinicDetail(clinic: Clinic.samples[index]);
                    },
                  ),
                );
              },
              // 11
              child: buildClinicCard(Clinic.samples[index]),
            );
          },
        ),
      ),
    );
  }
  Widget buildClinicCard(Clinic clinic) {
    return Card(
      // 1
      elevation: 2.0,
      // 2
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(clinic.imageUrl)),
            // 5
            const SizedBox(
              height: 14.0,
            ),
            // 6
            Text(
              clinic.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ShoppingRoute page
class ShoppingRoute extends StatelessWidget {
  const ShoppingRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
      appBar: AppBar(
        title: Text('Shopping'),
      ),
      // 3
      body: SafeArea(
        // 4
        child: ListView.builder(
          // 5
          itemCount: Shopping.samples.length,
          // 6
          itemBuilder: (BuildContext context, int index) {
            // 7
            // 7
            return GestureDetector(
              // 8
              onTap: () {
                // 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      return ShoppingDetail(shopping: Shopping.samples[index]);
                    },
                  ),
                );
              },
              // 11
              child: buildShoppingCard(Shopping.samples[index]),
            );
          },
        ),
      ),
    );
  }
  Widget buildShoppingCard(Shopping shopping) {
    return Card(
      // 1
      elevation: 2.0,
      // 2
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(shopping.imageUrl)),
            // 5
            const SizedBox(
              height: 14.0,
            ),
            // 6
            Text(
              shopping.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Map Page
class MapRoute extends StatefulWidget {
  const MapRoute({Key? key}) : super(key: key);

  @override
  _MapRouteState createState() => _MapRouteState();
}

class _MapRouteState extends State<MapRoute> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(13.795062592553771, 100.32562111414498),
    zoom: 15.5,
  );

  late final GoogleMapController _googleMapController; //late final solve null safty
  late Marker _origin;
  late Marker _destination;

  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AROUND MU: MAP'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: (controller) => _googleMapController = controller,
        //markers: {
        //  if(_origin != null) _origin,
        //  if(_destination != null) _destination
        //},
        //onLongPress: _addMarker,
        markers: muMarker(),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        // TO MOVE CAMERA TO INITIAL CAMERA POSITION
        onPressed: () => _googleMapController.animateCamera(
            CameraUpdate.newCameraPosition(_initialCameraPosition)
        ),
        child: const Icon(Icons.center_focus_strong),
      ),
    );
  }

  Set<Marker> muMarker() {
    return <Marker>[
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
