import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:quakezones/services/earthquakeAPI.dart';

class NetworkHelper {
  String apiUrl =
      'https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson';

  Future<EarthQuakeAPI> getEarthQuakeData() async {
    Uri apiUri = Uri.parse(apiUrl);
    http.Response response = await http.get(apiUri);

    if (response.statusCode == 200) {
      String data = response.body;
      //return jsonDecode(data);
      return EarthQuakeAPI.fromJson(jsonDecode(data));
    } else {
      print(response.statusCode);
      int errorData = response.statusCode;
      //return jsonDecode(errorData.toString());
      return EarthQuakeAPI.fromJson(jsonDecode(errorData.toString()));
    }
  }
}
