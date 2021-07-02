import 'package:flutter/material.dart';
import './widgets/ButtonWidget.dart';
import 'widgets/Dropdown.dart';
import 'widgets/InputField.dart';
import 'widgets/MultiDropDown.dart';

class Enumerator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EnumeratorState();
  }
}

class EnumeratorState extends State<Enumerator> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // CATCH REPORT
  String? landingSite;
  String? recorder;
  String? minorStratumDistrict;
  String? date;
  String? boatType;
  dynamic gearType;
  int? numberOfTripsBoatDays;
  int? numberOfGearsUnit;
  int? code;
  String? name;
  int? numberOfCatch;
  int? valueCurrency;
  int? price;
  int? numberOfFish;

  // LENGTH COMPOSITION
  String? coastalDistrict;
  String? landingSiteLengthComposition;
  String? fishingCraft;
  String? fishGear;
  String? dateOfDataCollection;
  int? meshSize;
  int? depth;
  int? headLength;
  String? fishingArea;
  String? lengthCompositionrecorder;
  String? species;
  int? totalCatchKG;
  int? totalWeightOfSampleKG;
  int? totalLengthKG;
  int? numberAtLengthTally;
  String? localSpeciesName;

  // EFFORT FORM
  String? landingSiteEffortForm;
  String? minorStratumDistrictEffortForm;
  String? recorderEffortForm;
  String? dateEffortForm;
  String? boatTypeEffortForm;
  dynamic gearTypeEffortForm;
  int? totalBoatOnSite;
  int? totalGearOnSite;
  int? totalBoatOutFishing;
  int? totalGearOutFishing;

  void savedData() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Enumerator Form')),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ExpansionTile(
                  title: Text(
                    'CATCH REPORT',
                  ),
                  children: <Widget>[
                    InputField(
                      hintText: 'Name of Landing site',
                      onSaved: (value) => setState(() => landingSite = value!),
                    ),
                    InputField(
                      hintText: 'Name of Recorder/Enumerator',
                      onSaved: (value) => setState(() => recorder = value!),
                    ),
                    InputField(
                      hintText: 'Name of Stratum/District',
                      onSaved: (value) =>
                          setState(() => minorStratumDistrict = value!),
                    ),

                    /*
                      Date of data collection
                     */
                    Text("Choose Types of Boat"),
                    Dropdown(
                      listItems: [
                        "Ghana",
                        "Std 5-10",
                        "Std 3-5",
                        "Std 1-3",
                        "Kru",
                        "others"
                      ],
                      dropdownClick: (selectItem) => boatType = selectItem!,
                      selectItem: boatType,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10), //Container
                    ),
                    MultiDropDown(
                      selectedOptionsInfoText: "Selected gear (tap to remove)",
                      listItems: [
                        {"name": "Ringnet", "value": "ringnet"},
                        {"name": "Beach", "value": "beach"},
                        {"name": "Seine", "value": "seine"},
                        {"name": "driftnet", "value": "driftnet"},
                        {"name": "Setnet", "value": "setnet"},
                        {"name": "Hook", "value": "hook"},
                        {"name": "Line", "value": "line"},
                        {"name": "Castnet", "value": "Castnet"},
                      ],
                      textField: 'name',
                      valueField: 'value',
                      onSaved: (value) {
                        gearTypeEffortForm = value;
                        print(
                            'This is the value of natonality $gearTypeEffortForm');
                      },
                      onChanged: (value) {
                        print('The selected values are $value');
                      },
                      titleText: 'Select Gear Type',
                      maxLength: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10), //Container
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Number of trips(Boat-days)',
                      onSaved: (value) => setState(
                          () => numberOfTripsBoatDays = int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Number of Gears(Gear units)',
                      onSaved: (value) => setState(
                          () => numberOfGearsUnit = int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Code',
                      onSaved: (value) =>
                          setState(() => code = int.tryParse(value!)!),
                    ),
                    InputField(
                      hintText: "Species\'s name",
                      onSaved: (value) => setState(() => species = value!),
                    ),
                    InputField(
                      hintText: "Number of Catch in Kg",
                      textInputType: TextInputType.number,
                      onSaved: (value) =>
                          setState(() => numberOfCatch = int.tryParse(value!)!),
                    ),
                    InputField(
                      hintText: "Total Value of catch in LE",
                      textInputType: TextInputType.number,
                      onSaved: (value) =>
                          setState(() => valueCurrency = int.tryParse(value!)!),
                    ),
                    InputField(
                      hintText: "Total price (measuring not specified)",
                      textInputType: TextInputType.number,
                      onSaved: (value) =>
                          setState(() => price = int.tryParse(value!)!),
                    ),
                    InputField(
                      hintText: "Total price (measuring not specified)",
                      textInputType: TextInputType.number,
                      onSaved: (value) =>
                          setState(() => price = int.tryParse(value!)!),
                    ),
                    InputField(
                      hintText: "Number of Individual fish",
                      textInputType: TextInputType.number,
                      onSaved: (value) =>
                          setState(() => numberOfFish = int.tryParse(value!)!),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'LENGTH COMPOSITION',
                  ),
                  children: <Widget>[
                    InputField(
                      hintText: 'Coastal District name',
                      onSaved: (value) =>
                          setState(() => coastalDistrict = value!),
                    ),
                    InputField(
                      hintText: 'Landing Site',
                      onSaved: (value) =>
                          setState(() => landingSiteEffortForm = value!),
                    ),
                    InputField(
                      hintText: 'Fishing Craft name',
                      onSaved: (value) => setState(() => fishingCraft = value!),
                    ),
                    InputField(
                      hintText: 'Fishing gear name',
                      onSaved: (value) => setState(() => fishGear = value!),
                    ),
                    /* 
                        Date
                    */

                    InputField(
                      hintText: 'Size of mesh in milimeter',
                      textInputType: TextInputType.number,
                      onSaved: (value) =>
                          setState(() => meshSize = int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Depth of fishing net in centimeter',
                      onSaved: (value) =>
                          setState(() => depth = int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Length of fishing net',
                      onSaved: (value) =>
                          setState(() => headLength = int.tryParse(value!)!),
                    ),
                    InputField(
                      hintText: 'Location of fishing area',
                      onSaved: (value) => setState(() => fishingArea = value!),
                    ),
                    InputField(
                      hintText: 'Enumerator of data',
                      onSaved: (value) =>
                          setState(() => lengthCompositionrecorder = value!),
                    ),
                    InputField(
                      hintText: 'Local Species name',
                      onSaved: (value) =>
                          setState(() => localSpeciesName = value!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Total catch of individual fishes in kilogram',
                      onSaved: (value) =>
                          setState(() => totalCatchKG = int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Total Weight of sample in kilogram',
                      onSaved: (value) => setState(
                          () => totalWeightOfSampleKG = int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Total Length of fish',
                      onSaved: (value) =>
                          setState(() => totalLengthKG = int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Total Tally of length of fishes',
                      onSaved: (value) => setState(
                          () => numberAtLengthTally = int.tryParse(value!)!),
                    ),
                  ],
                ),
                ExpansionTile(
                  title: Text(
                    'EFFORT FORM',
                  ),
                  children: <Widget>[
                    InputField(
                      hintText: 'Name of Landing site',
                      onSaved: (value) =>
                          setState(() => landingSiteEffortForm = value!),
                    ),
                    InputField(
                      hintText: 'Name of Stratum/District',
                      onSaved: (value) => setState(
                          () => minorStratumDistrictEffortForm = value!),
                    ),
                    InputField(
                      hintText: 'Name of Recorder/Enumerator',
                      onSaved: (value) =>
                          setState(() => recorderEffortForm = value!),
                    ),
                    /*
                     * Date Here
                     */
                    Text("Choose Types of Boat"),
                    Dropdown(
                      listItems: [
                        "Ghana",
                        "Std 5-10",
                        "Std 3-5",
                        "Std 1-3",
                        "Kru",
                        "others"
                      ],
                      dropdownClick: (selectItem) =>
                          boatTypeEffortForm = selectItem!,
                      selectItem: boatTypeEffortForm,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10), //Container
                    ),
                    MultiDropDown(
                      selectedOptionsInfoText: "Selected gear (tap to remove)",
                      listItems: [
                        {"name": "Ringnet", "value": "ringnet"},
                        {"name": "Beach", "value": "beach"},
                        {"name": "Seine", "value": "seine"},
                        {"name": "driftnet", "value": "driftnet"},
                        {"name": "Setnet", "value": "setnet"},
                        {"name": "Hook", "value": "hook"},
                        {"name": "Line", "value": "line"},
                        {"name": "Castnet", "value": "Castnet"},
                      ],
                      textField: 'name',
                      valueField: 'value',
                      onSaved: (value) {
                        gearType = value;
                        print('This is the value of natonality $gearType');
                      },
                      onChanged: (value) {
                        print('The selected values are $value');
                      },
                      titleText: 'Select Gear Type',
                      maxLength: 8,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10), //Container
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Total Boat on Site',
                      onSaved: (value) => setState(
                          () => totalBoatOnSite = int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Total Gear on Site',
                      onSaved: (value) => setState(
                          () => totalGearOnSite = int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Total Boat Out Fishing',
                      onSaved: (value) => setState(
                          () => totalBoatOutFishing = int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Total Gear Out Fishing',
                      onSaved: (value) => setState(
                          () => totalGearOutFishing = int.tryParse(value!)!),
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
