import 'package:coworker/constant/constant.dart';
import 'package:coworker/services/Location_Service.dart';
import 'package:custom_date_range_picker/custom_date_range_picker.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';

import 'InputText.dart';

class AboutReciverInformation extends StatefulWidget {
  const AboutReciverInformation({Key? key}) : super(key: key);

  @override
  State<AboutReciverInformation> createState() =>
      _AboutReciverInformationState();
}

class _AboutReciverInformationState extends State<AboutReciverInformation> {
  bool locationLoading = false;
  DateTime? startDate = DateTime.now();
  DateTime? endDate = DateTime.now();
  LocationService locationService = LocationService();
  getLatLong() {
    Future<Position> data = locationService.determinePosition();
    data.then((value) {
      print("value $value");
      setState(() {
        locationService.lat = value.latitude;
        locationService.long = value.longitude;
      });

      getAddress(value.latitude, value.longitude);
    }).catchError((error) {
      print("Error $error");
    });
  }

  getAddress(lat, long) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(lat, long);
    setState(() {
      locationService.address = placemarks[0].country! +
          "," +
          placemarks[0].administrativeArea! +
          "," +
          placemarks[0].street! +
          "," +
          placemarks[0].locality! +
          "," +
          placemarks[0].postalCode!;
    });

    print(locationService.address);
    setState(() {
      locationLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: kBackground.copyWith(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50), topLeft: Radius.circular(50))),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Textfield(
                  title: "Name",
                  keyBoardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Textfield(
                  title: "Phone",
                  keyBoardType: TextInputType.number,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Textfield(
                    title: "Task Title",
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Textfield(
                    title: "Description",
                    maxline: 5,
                  )),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    locationLoading = true;
                  });
                  getLatLong();
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.white),
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: locationLoading == true
                          ? Center(
                              child: CircularProgressIndicator(
                              color: Colors.white,
                            ))
                          : Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.white,
                                ),
                                Expanded(
                                  child: Text(
                                    locationService.address,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  color: Colors.white,
                                )
                              ],
                            ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 32),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Category",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Icon(
                                  Icons.sports_gymnastics,
                                  color: Colors.white,
                                ),
                                backgroundColor: Colors.white.withOpacity(0.3),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Running",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                  onTap: () {
                    showCustomDateRangePicker(
                      context,
                      dismissible: true,
                      minimumDate:
                          DateTime.now().subtract(const Duration(days: 30)),
                      maximumDate: DateTime.now().add(const Duration(days: 30)),
                      endDate: endDate,
                      startDate: startDate,
                      backgroundColor: Colors.white,
                      primaryColor: Color(0xff07434D),
                      onApplyClick: (start, end) {
                        setState(() {
                          endDate = end;
                          startDate = start;
                        });
                      },
                      onCancelClick: () {},
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_today_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '${DateFormat("dd, MMM").format(startDate!)} / ${DateFormat("dd, MMM").format(endDate!)}',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.white),
                        color: Colors.white.withOpacity(0.3)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_a_photo,
                          size: 12,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Add a photo",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
