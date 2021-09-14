import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:quakezones/services/earthquakeAPI.dart';
import 'package:quakezones/services/network.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<EarthQuakeAPI> _earthquakeData;
  GoogleMapController mapController;
  List<Marker> _markerList = <Marker>[];
  static final LatLng _center = const LatLng(8.01817, -1.18748);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    super.initState();
    _earthquakeData = NetworkHelper().getEarthQuakeData();
    // _earthquakeData
    //     .then((value) => print('Places ${value.features[0].properties.place}'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quake Zone'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(target: _center, zoom: 8.0),
        onMapCreated: _onMapCreated,
        markers: Set<Marker>.of(_markerList),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          findQuake();
        },
        label: Text('Find Tremor'),
        icon: Icon(Icons.place),
      ),
    );
  }

  void findQuake() {
    setState(() {
      _markerList.clear();
      _handleResponse();
    });
  }

  void _handleResponse() {
    setState(() {
      _earthquakeData.then(
        (apiData) => apiData.features.forEach(
          (dataItem) => {
            _markerList.add(
              Marker(
                  markerId: MarkerId(dataItem.id),
                  infoWindow: InfoWindow(
                    title: dataItem.properties.mag.toString(),
                    snippet: dataItem.properties.title,
                  ),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed),
                  position: LatLng(dataItem.geometry.coordinates[1],
                      dataItem.geometry.coordinates[0])),
            )
          },
        ),
      );
    });
  }
}
