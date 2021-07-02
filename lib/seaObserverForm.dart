import 'package:flutter/material.dart';
import './widgets/ButtonWidget.dart';
import 'widgets/InputField.dart';
import 'widgets/MultiDropDown.dart';
import 'dart:async';
import 'package:geolocator/geolocator.dart';

class SeaObserver extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SeaObserverState();
  }
}

class SeaObserverState extends State<SeaObserver> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? callSignOfVessel;
  String? fishingDate;
  dynamic gridPositionOfReport;
  String? dateTimeRespresentingTransmission;
  int? shrimpsTotalKG;
  int? demersalsTotalKG;
  int? dischargedTotalKG;

  // Data Collection form
  int? haulingNumber;
  String? shootingTime;
  int? shootingLatitude;
  int? shootingLongitude;
  String? haulingTime;
  int? haulingLatitude;
  int? haulingLongitude;
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
    print(totalMixKG);
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
                    /* 
                        FISH DATE SHOULD BE HERE
                    */
                    /* 
                        GPS Location of where data is reported
                    */

                    /* 
                        DateTime of Report for daily summary catch
                    */
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
                    /* 
                        Time net is put into the water for fishing
                    */
                    /* 
                        Latitude coordinate of shooting time
                    */
                    /* 
                        Longitude coordinate of shooting time
                    */
                    /*
                    Time net is removed from water

                    */
                    /* 
                        Hauling Latitude coordinate 
                    */
                    /* 
                        Hauling Longitude coordinate 
                    */
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
