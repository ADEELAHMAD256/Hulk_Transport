import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:google_api_headers/google_api_headers.dart';
import '../../custom_widgets/custom_button.dart';
import '../../custom_widgets/custom_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

const kGoogleApiKey = 'AIzaSyBx95Bvl9O-US2sQpqZ41GdsHIprnXvJv8';
final homeScaffoldKey = GlobalKey<ScaffoldState>();
MarkerId? markerId;
MarkerId? markerId1;

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> travelData = [
    {'city': 'Dubai', 'daysAgo': 2},
    {'city': 'Abu Dhabi', 'daysAgo': 5},
    {'city': 'Sharjah', 'daysAgo': 10},
    {'city': 'Ajman', 'daysAgo': 15},
    {'city': 'Fujairah', 'daysAgo': 20},
  ];

  bool loading = false;
  GoogleMapsPlaces? places;
  GoogleMapsPlaces? places1;
  PlacesDetailsResponse? detail;
  PlacesDetailsResponse? detail1;
  static const CameraPosition initialCameraPosition =
      CameraPosition(target: LatLng(37.42796, -122.08574), zoom: 12.0);
  final Completer<GoogleMapController> _controller = Completer();
  Set<Marker> markersList = {};
  late GoogleMapController googleMapController;
  final Mode _mode = Mode.overlay;

  TextEditingController fromController = TextEditingController();
  TextEditingController toController = TextEditingController();

  @override
  void initState() {
    markOnCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      key: homeScaffoldKey,
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              initialCameraPosition: initialCameraPosition,
              markers: markersList,
              mapType: MapType.normal,
              onTap: _handleMapTap,
              onMapCreated: (GoogleMapController controller) {
                googleMapController = controller;
                _controller.complete(controller);
                controller.showMarkerInfoWindow(markerId!);
                controller.showMarkerInfoWindow(markerId1!);
              },
            ),
          ),
          Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, bottom: 14.h),
                    child: Text(
                      "Select Location",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        color: Color(0xff0D1724),
                      ),
                    ),
                  ),
                  CustomButton(
                    borderColor: Colors.transparent,
                    width: 290.w,
                    bgColor: Color(0xffF3F2F2),
                    textColor: Color(0xff000000).withOpacity(.87),
                    onPressed: () async => await _handlePressButton(1),
                    text: fromController.text.isNotEmpty ? fromController.text : "Where From",
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, bottom: 30.h),
                    child: CustomButton(
                      borderColor: Colors.transparent,
                      width: 270.w,
                      bgColor: Color(0xffF3F2F2),
                      textColor: Color(0xff000000).withOpacity(.87),
                      onPressed: () => _handlePressButton(2),
                      text: toController.text.isNotEmpty ? toController.text : "Where To",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, bottom: 14.h),
                    child: Text(
                      "Recent Rides",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        color: Color(0xff0D1724),
                      ),
                    ),
                  ),
                  Container(
                    height: 120.h,
                    child: ListView.builder(
                      itemCount: travelData.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              title: Text('${travelData[index]['city']}'),
                              trailing: Text(
                                'Traveled ${travelData[index]['daysAgo']} days ago',
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (markerId == null) {
                        Get.snackbar(
                          'Required',
                          "Please select the pickup location",
                        );
                      } else if (markerId1 == null) {
                        Get.snackbar(
                          'Required',
                          "Please select the drop-off location ",
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      minimumSize: const Size(double.maxFinite, 50),
                      maximumSize: const Size(double.maxFinite, 50),
                    ),
                    child: loading == true
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text(
                            "Next",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<String?> getAddressFromLatLng(context, double lat, double lng) async {
    String _host = 'https://maps.google.com/maps/api/geocode/json';
    final url = '$_host?key=$kGoogleApiKey&language=en&latlng=$lat,$lng';
    if (lat != null && lng != null) {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        Map data = jsonDecode(response.body);
        String formattedAddress = data["results"][0]["formatted_address"];
        return formattedAddress;
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  double? latitude;
  double? longitude;
  Future<void> _handleMapTap(LatLng tappedPoint) async {
    latitude = tappedPoint.latitude;
    longitude = tappedPoint.longitude;
    print(markerId);
    if (markerId == null) {
      markerId = MarkerId("from");
      String? getAddress = await getAddressFromLatLng(context, tappedPoint.latitude, tappedPoint.longitude);
      // setFromLocation(tappedPoint);
      fromController.text = (getAddress)!;
      _updateMapMarkers();
      print("object${fromController.text}");
    } else {
      markerId = MarkerId("to");
      String? getAddressTo = await getAddressFromLatLng(context, tappedPoint.latitude, tappedPoint.longitude);
      // setFromLocation(tappedPoint);
      // setToLocation(tappedPoint);
      toController.text = (getAddressTo)!;
    }
    _updateMapMarkers();
  }

  Future<void> markOnCurrentLocation() async {
    final GoogleMapController controller = await _controller.future;
    controller.showMarkerInfoWindow(const MarkerId('ID_MARKET'));
    Position position = await getCurrentPosition();
    googleMapController.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
        target: LatLng(position.latitude, position.longitude),
        zoom: 13,
      ),
    ));
    markersList.clear();
    setState(() {});
  }

  Future<Position> getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.',
      );
    }
    return await Geolocator.getCurrentPosition();
  }

  Future<void> _handlePressButton(int type) async {
    Prediction? p = await PlacesAutocomplete.show(
      logo: const Text(""),
      context: context,
      apiKey: kGoogleApiKey,
      onError: onError,
      mode: _mode,
      language: 'en',
      strictbounds: false,
      types: [""],
      components: [],
      decoration: InputDecoration(
        hintText: 'Search',
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.white),
        ),
      ),
    );
    type == 1
        ? displayPrediction(p!, homeScaffoldKey.currentState)
        : displayDropOffPrediction(p!, homeScaffoldKey.currentState);
    if (p != null) {
      PlacesDetailsResponse details = await places!.getDetailsByPlaceId(p.placeId!);
      LatLng location = LatLng(
        details.result.geometry!.location.lat,
        details.result.geometry!.location.lng,
      );
    } else {
      // Handle the case where p is null (e.g., user canceled the autocomplete)
      print("User canceled the autocomplete");
    }
  }

  onError(PlacesAutocompleteResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(response.errorMessage!)));
  }

  Future<void> displayPrediction(Prediction p, ScaffoldState? currentState) async {
    print("kjlhfadsfjfhl..........................");
    final GoogleMapController controller = await _controller.future;
    places = GoogleMapsPlaces(apiKey: kGoogleApiKey, apiHeaders: await const GoogleApiHeaders().getHeaders());
    detail = await places!.getDetailsByPlaceId(p.placeId!);
    final lat = detail!.result.geometry!.location.lat;
    final lng = detail!.result.geometry!.location.lng;
    fromController.text = detail!.result.formattedAddress!;
    markerId = const MarkerId("1");
    controller.showMarkerInfoWindow(markerId!);
    Marker newMarker = Marker(
      markerId: markerId!,
      position: LatLng(lat, lng),
      infoWindow: InfoWindow(title: detail!.result.formattedAddress),
    );
    markersList
      ..removeWhere((existingMarker) => existingMarker.markerId == newMarker.markerId)
      ..add(newMarker);
    setState(() {});
    googleMapController.animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, lng), 12.0));
  }

  Future<void> displayDropOffPrediction(Prediction p, ScaffoldState? currentState) async {
    final GoogleMapController controller = await _controller.future;
    places1 = GoogleMapsPlaces(
      apiKey: kGoogleApiKey,
      apiHeaders: await const GoogleApiHeaders().getHeaders(),
    );
    detail1 = await places1!.getDetailsByPlaceId(p.placeId!);
    final lat = detail1!.result.geometry!.location.lat;
    final lng = detail1!.result.geometry!.location.lng;
    toController.text = detail1!.result.formattedAddress!;
    markerId1 = const MarkerId("2");
    controller.showMarkerInfoWindow(markerId1!);
    Marker newMarker = Marker(
      markerId: markerId1!,
      position: LatLng(lat, lng),
      infoWindow: InfoWindow(title: detail1!.result.formattedAddress),
    );
    markersList
      ..removeWhere((existingMarker) => existingMarker.markerId == newMarker.markerId)
      ..add(newMarker);
    // markersList.add(
    //   Marker(
    //     markerId: markerId1!,
    //     position: LatLng(lat, lng),
    //     infoWindow: InfoWindow(title: detail1!.result.name),
    //   ),
    // );
    setState(() {});
    controller.animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, lng), 12.0));
  }

  void _updateMapMarkers() {
    // markersList.clear();

    // if (fromController.text.isNotEmpty) {
    try {
      Marker fromMarker = Marker(
        markerId: markerId!,
        position: LatLng(latitude!, longitude!),
        infoWindow: InfoWindow(title: "Where From"),
      );
      markersList.add(fromMarker);
    } catch (e) {
      print("Error parsing fromController.text: $e");
    }
    // }

    // if (toController.text.isNotEmpty) {
    try {
      Marker toMarker = Marker(
        markerId: markerId!,
        position: LatLng(latitude!, longitude!),
        infoWindow: InfoWindow(title: "Where To"),
      );
      markersList.add(toMarker);
    } catch (e) {
      print("Error parsing toController.text: $e");
    }
    // }

    setState(() {});
  }
}
