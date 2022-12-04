import 'package:blueymc/common/sizedboxes.dart';
import 'package:blueymc/common/textstyle.dart';
import 'package:blueymc/common/validator.dart';
import 'package:blueymc/screens/addplayespage.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_place_picker_mb/google_maps_place_picker.dart'
    as gMapPlacePicker;
import 'package:google_maps_flutter/google_maps_flutter.dart' as gMap;

Position? location;
double? lat;
double? lng;
gMapPlacePicker.PickResult? result;
String? locationAddress;

class MatchAddPage extends StatefulWidget {
  MatchAddPage({Key? key}) : super(key: key);

  @override
  State<MatchAddPage> createState() => _MatchAddPageState();
}

class _MatchAddPageState extends State<MatchAddPage> {
  final matchNameController = TextEditingController();

  final timeController = TextEditingController();

  final dayController = TextEditingController();

  final placeController = TextEditingController();

  final amountController = TextEditingController();

  final matchingKey = GlobalKey<FormState>();

  String valueChanged = '';

  String valueSaved = '';
  var now = DateTime.now();
  LocationPermission? permission;
  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  getCurrentLocation() async {
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    location = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: const Text(
          'Start Match',
          style: appbar,
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset(
                  'assets/images/sport.gif',
                  width: double.infinity,
                ),
                // decoration: BoxDecoration(color: Colors.blueAccent),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Form(
              key: matchingKey,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      return Validate.MatchNameValidator(value!);
                    },
                    controller: matchNameController,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.draw_sharp),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          //borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(
                            color: Colors.green,
                          ),
                        ),
                        hintText: "Enter Match Name: *",
                        label: Text('Match Name')),
                  ),
                ),
                kheight5,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: DateTimePicker(
                    type: DateTimePickerType.dateTime,
                    //dateMask: 'yyyy/MM/dd',
                    controller: timeController,
                    //initialValue: _initialValue,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.event),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        // borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      ),
                      hintText: 'Select date and time: *',
                      label: Text('Date and Time'),
                    ),
                    firstDate: now,
                    lastDate: DateTime(2100),
                    icon: Icon(Icons.event),
                    dateLabelText: 'Starting Date',
                    onChanged: (val) => setState(() => valueChanged = val),
                    validator: (value) {
                      return Validate.TimeValidator(value!);
                    },
                    onSaved: (val) => setState(() => valueSaved = val ?? ''),
                  ),
                ),
              ]),
            ),
            kheight5,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                keyboardType: TextInputType.text,
                validator: (value) {
                  return Validate.LocationValidator(value!);
                },
                controller: dayController,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.location_on),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      // borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    hintText: "Place: *",
                    label: Text('Place')),
              ),
            ),
            kheight5,
            InkWell(
              onTap: () async {
                location ??= await Geolocator.getCurrentPosition(
                    desiredAccuracy: LocationAccuracy.high);
                // ignore: use_build_context_synchronously
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => gMapPlacePicker.PlacePicker(
                      forceAndroidLocationManager: true,
                      enableMapTypeButton: true,
                      apiKey: "AIzaSyCfSWYXBcU_tvYV8vljjokKGMAyUvfQKrE",
                      initialPosition:
                          gMap.LatLng(location!.latitude, location!.longitude),
                      
                      onPlacePicked: (res) async {
                        print('onPlacePicked');
                        result = res;
                        setState(() {
                                    result = res;
                                    Navigator.of(context).pop();
                                  });
                        lat = result!.geometry!.location.lat;
                        lng = result!.geometry!.location.lng;
                        String? address = result!.formattedAddress;
                        if (result!.formattedAddress!.contains("+")) {
                          address = address!.substring(
                              address.indexOf(" ") + 1, address.length);
                        }

                        locationAddress = address!;

                        Navigator.of(context).pop();
                      },
                      useCurrentLocation: true,
                      resizeToAvoidBottomInset: false,
                    ),
                  ),
                );
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.black,
                  //     spreadRadius: 0.0,
                  //     blurRadius: 0.01
                  //   )
                  // ]
                ),
                child: const Center(
                  child: Text(
                    "SET SHOP LOCATION",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w900,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                // validator: (value) {
                //   return Validate.AmountValidator(value!);
                // },
                controller: amountController,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.currency_rupee),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      //borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    hintText: "Amount Per Head: *",
                    label: Text('Amount')),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        matchingKey.currentState!.validate();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddPlayers(),
                          ),
                        );
                        //
                      },
                      child: const Icon(Icons.person_add, color: Colors.black),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
