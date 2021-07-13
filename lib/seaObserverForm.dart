import 'package:flutter/material.dart';
import './widgets/ButtonWidget.dart';
import 'widgets/InputField.dart';
import 'widgets/MultiDropDown.dart';
import 'package:geolocator/geolocator.dart';
import 'widgets/DateWidget.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'widgets/TextWidget.dart';

class SeaObserver extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SeaObserverState();
  }
}

class SeaObserverState extends State<SeaObserver> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? callSignOfVessel;
  dynamic fishingDate;
  Position? gridPositionOfReport;
  dynamic dateTimeRepresentingTransmission;
  int? shrimpsTotalKG;
  int? demersalsTotalKG;
  int? dischargedTotalKG;

  // Data Collection form
  int? haulingNumber;
  dynamic shootingTime;
  Position? shootingCoordinate;
  dynamic haulingTime;
  Position? haulingCoordinate;
  int? waterDepth;
  int? trawlDuration;
  dynamic speciesName;
  int? catchOfSpeciesPerHaulKG;
  int? totalCatchForEachSpeciesPerDayKG;
  int? mixKG;
  int? totalMixKG;

  void savedData() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
    print(callSignOfVessel);
    print(haulingNumber);
    print(speciesName[2]);
    print(shootingTime);
    print(dateTimeRepresentingTransmission);
    print(gridPositionOfReport);
  }

  _getCurrentLocation() {
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) {
      setState(() {
        gridPositionOfReport = position;
      });
    }).catchError((e) {
      print(e);
    });
  }

  _getShootingCoordinate() {
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) {
      setState(() {
        shootingCoordinate = position;
      });
    }).catchError((e) {
      print(e);
    });
  }

  _getHaulingCoordinate() {
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) {
      setState(() {
        haulingCoordinate = position;
      });
    }).catchError((e) {
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Sea Observer Form')),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ExpansionTile(
                  title: Text(
                    'SUMMARY OF DAILY FISHING CATCH/DATA COLLECTED REPORT',
                  ),
                  children: <Widget>[
                    InputField(
                      hintText: 'Call Sign of Vessel (A)',
                      onSaved: (value) =>
                          setState(() => callSignOfVessel = value!),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5), //Container
                    ),
                    TextWidget(name: "Date of actual fishing"),
                    DateTimeWidget(
                      dateText: "Select Date",
                      timeText: "Select Time",
                      onSaved: (value) => {
                        setState(() => fishingDate = value),
                      },
                      dateOrTime: DateTimePickerType.dateTimeSeparate,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10), //Container
                    ),
                    // ignore: deprecated_member_use
                    FlatButton(
                      child: TextWidget(
                          name:
                              "Click to get GPS Location of where data is reported"),
                      onPressed: () {
                        // Get location here
                        _getCurrentLocation();
                      },
                    ),
                    if (gridPositionOfReport != null)
                      TextWidget(
                          name:
                              "Latitude: ${gridPositionOfReport!.latitude}, Longitude: ${gridPositionOfReport!.longitude}"),
                    Padding(
                      padding: EdgeInsets.all(20), //Container
                    ),
                    TextWidget(
                        name: "DateTime of Report for daily summary catch"),
                    DateTimeWidget(
                      dateText: "Select Date",
                      timeText: "Select Time",
                      onSaved: (value) => {
                        setState(
                            () => dateTimeRepresentingTransmission = value),
                      },
                      dateOrTime: DateTimePickerType.dateTimeSeparate,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10), //Container
                    ),
                    InputField(
                      hintText: 'Total summary catch of shrimps in kg',
                      textInputType: TextInputType.number,
                      onSaved: (value) => setState(
                          () => shrimpsTotalKG = int.tryParse(value!)!),
                    ),
                    InputField(
                      hintText:
                          'Total Fishses in kg that are at the depth/ground level of sea',
                      textInputType: TextInputType.number,
                      onSaved: (value) => setState(
                          () => demersalsTotalKG = int.tryParse(value!)!),
                    ),
                    InputField(
                      hintText: 'Discharged Total (KG) (H)',
                      textInputType: TextInputType.number,
                      onSaved: (value) => setState(
                          () => dischargedTotalKG = int.tryParse(value!)!),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'DATA COLLECTION FORM',
                  ),
                  children: <Widget>[
                    InputField(
                      hintText: 'Number of Hauls per day/No of fishing per day',
                      textInputType: TextInputType.number,
                      onSaved: (value) =>
                          setState(() => haulingNumber = int.tryParse(value!)!),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10), //Container
                    ),
                    TextWidget(
                        name: "Time net is put into the water for fishing"),
                    DateTimeWidget(
                      timeText: "Select Time",
                      onSaved: (value) => {
                        setState(() => shootingTime = int.tryParse(value)),
                      },
                      dateOrTime: DateTimePickerType.dateTimeSeparate,
                    ),
                    // ignore: deprecated_member_use
                    FlatButton(
                      child: TextWidget(
                          name: "Click to get Coordinate of shooting time"),
                      onPressed: () {
                        // Get location here
                        _getShootingCoordinate();
                      },
                    ),
                    if (shootingCoordinate != null)
                      TextWidget(
                          name:
                              "Latitude: ${shootingCoordinate!.latitude}, Longitude: ${shootingCoordinate!.longitude}"),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30), //Container
                    ),
                    TextWidget(name: "Time net is removed from water"),
                    DateTimeWidget(
                      dateText: "Select Date",
                      timeText: "Select Time",
                      onSaved: (value) => {
                        setState(() => haulingTime = value),
                      },
                      dateOrTime: DateTimePickerType.dateTimeSeparate,
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30), //Container
                    ),
                    // ignore: deprecated_member_use
                    FlatButton(
                      child: TextWidget(
                          name: "Click to get Coordinate of Hauling time"),
                      onPressed: () {
                        // Get location here
                        _getHaulingCoordinate();
                      },
                    ),
                    if (haulingCoordinate != null)
                      TextWidget(
                          name:
                              "Latitude: ${haulingCoordinate!.latitude}, Longitude: ${haulingCoordinate!.longitude}"),
                    InputField(
                      hintText: 'Depth of water',
                      textInputType: TextInputType.number,
                      onSaved: (value) =>
                          setState(() => waterDepth = int.tryParse(value!)!),
                    ),
                    InputField(
                      hintText:
                          'Hauling Time minusx(-) Shooting Time in Seconds',
                      textInputType: TextInputType.number,
                      onSaved: (value) =>
                          setState(() => trawlDuration = int.tryParse(value!)!),
                    ),
                    MultiDropDown(
                      selectedOptionsInfoText:
                          "Selected Fish Species (tap to remove)",
                      //--------end customization selection modal------------
                      listItems: [
                        {"name": "Snapper", "value": "Snapper"},
                        {"name": "Pollock", "value": "Pollock"},
                        {"name": "Herring", "value": "Herring"},
                        {"name": "Crab", "value": "Crab"},
                        {"name": "butter catfish", "value": "butter catfish"},
                        {"name": "Adonis tetra", "value": "Adonis tetra"},
                        {
                          "name": "Aphyosemion bivittatum",
                          "value": "Aphyosemion bivittatum"
                        },
                        {
                          "name": "Andersonia leptura",
                          "value": "Andersonia leptura"
                        },
                      ],
                      textField: 'name',
                      valueField: 'value',
                      maxLength: 8,
                      onSaved: (value) {
                        speciesName = value;
                        print(
                            'This is the value of Species seleted $speciesName');
                      },
                      onChanged: (value) {
                        print('The selected values are $value');
                      },
                      titleText: 'Select Fish Species',
                    ),
                    Padding(
                      padding: EdgeInsets.all(5), //Container
                    ),
                    InputField(
                      hintText: 'Total catch of species in kg per fishing day',
                      textInputType: TextInputType.number,
                      onSaved: (value) => setState(() =>
                          totalCatchForEachSpeciesPerDayKG =
                              int.tryParse(value!)!),
                    ),
                    InputField(
                      hintText:
                          'Mix of other species that are unsorted/uncategorised in kg per Haul',
                      textInputType: TextInputType.number,
                      onSaved: (value) =>
                          setState(() => mixKG = int.tryParse(value!)!),
                    ),
                    InputField(
                      hintText:
                          'Total Mix of other species that are unsorted/uncategorised in kg per fishing day',
                      textInputType: TextInputType.number,
                      onSaved: (value) =>
                          setState(() => totalMixKG = int.tryParse(value!)!),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                  width: 100,
                ),
                ButtonWidget(
                  text: 'Submit',
                  onClicked: savedData,
                ),
              ]),
        ),
      ),
    );
  }
}
