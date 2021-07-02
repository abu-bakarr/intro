import 'package:flutter/material.dart';
import './widgets/ButtonWidget.dart';
import 'widgets/Dropdown.dart';
import 'widgets/InputField.dart';
import 'widgets/MultiDropDown.dart';

class DockObserver extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DockObserverState();
  }
}

class DockObserverState extends State<DockObserver> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  int _numberOfVessels = 0;
  String _vesselName = "";
  int _licenseNumber = 0;
  String _nameOfObserver = "";
  String _licenseType = "";
  String _vesselType = "";
  String _callSign = "";
  int _crewComposition = 0;
  String _logbookAvailability = "";
  dynamic _nationality;
  // 3 Species Composition
  int _speciesCompositionNumbering = 0;
  String _speciesName = "";
  int _speciesCompositionBagsContainingFishes = 0;
  int _speciesWeightOfIndividualBagsInKG = 0;
  int _speciesCompositionNumberOfCartonsOfFishes = 0;
  int _speciesCompositionWeightOfIndividualCartonsInKG = 0;
  int _speciesCompositionLooseFishKGS = 0;
  int _speciesCompositionTotalWeight = 0;
  int _speciesCompositionTotalWeightOfFishesOnBoardInKG = 0;
  int _speciesCompositionTotalWeightOfShelfishOnBoardInKG = 0;
  String _vesselCaptainName = "";
  String _captainSignature = "";

  //4 Discharged Locally
  int _dischargedLocallyNumbering = 0;
  String _dischargedLocallyName = "";
  int _dischargedLocallyBagsContainingFishes = 0;
  int _dischargedLocallyWeightOfIndividualBagsInKG = 0;
  int _dischargedLocallyNumberOfCartonsOfFishes = 0;
  int _dischargedLocallyWeightOfIndividualCartonsInKG = 0;
  int _dischargedLocallyLooseFishKGS = 0;
  int _dischargedLocallyTotalWeight = 0;
  int _dischargedLocallyTotalWeightOfFishesOnBoardInKG = 0;
  int _dischargedLocallyTotalWeightOfShelfishOnBoardInKG = 0;
  String _agentName = "";
  String _agentSignature = "";

  void savedData() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      print("Vessel Name: $_vesselName");
      print("Number of Vessel: $_numberOfVessels");
      print("License Number: $_licenseNumber");
      print("Name of  Observer: $_nameOfObserver");
      print("License Number: $_callSign");
      print("License Type: $_licenseType");
      print("Vessel Type: $_vesselType");
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Dock Observer Form')),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InputField(
                hintText: 'Vessel Name',
                onSaved: (value) => setState(() => _vesselName = value!),
              ),
              InputField(
                hintText: 'Number of Vessel',
                textInputType: TextInputType.number,
                onSaved: (value) =>
                    setState(() => _numberOfVessels = int.tryParse(value!)!),
              ),
              ExpansionTile(
                title: Text(
                  'License Information',
                ),
                children: <Widget>[
                  InputField(
                    hintText: 'License Number',
                    textInputType: TextInputType.number,
                    onSaved: (value) =>
                        setState(() => _licenseNumber = int.tryParse(value!)!),
                  ),
                  Text("Choose License Type"),
                  Dropdown(
                    listItems: ["Local", "Foreign"],
                    dropdownClick: (selectItem) => _licenseType = selectItem!,
                    selectItem: _licenseType,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10), //Container
                  ),
                ],
              ),

              /* 

              Date Issues Here 
          
              */
              /* 
              
              Date Expire Here 
          
              */

              Text("Choose Vessel Type"),
              Dropdown(
                listItems: [
                  "Mid-water Trawler",
                  "Pelagic Trawler",
                  "Demersal Type",
                  "Tuna Vessel",
                  "Longline Vessel",
                  "Shrimper Vessel",
                  "Supply Vessel",
                  "Carrier Vessel",
                  "Other Vessel"
                ],
                dropdownClick: (selectItem) => _vesselType = selectItem!,
                selectItem: _vesselType,
              ),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              InputField(
                hintText: 'Name of Observer',
                onSaved: (value) => setState(() => _nameOfObserver = value!),
              ),
              InputField(
                hintText: 'Call sign of vessels',
                onSaved: (value) => setState(() => _callSign = value!),
              ),
              ExpansionTile(
                  title: Text(
                    'Crew:',
                  ),
                  children: <Widget>[
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Number of crew members',
                      onSaved: (value) => setState(
                          () => _crewComposition = int.tryParse(value!)!),
                    ),
                    MultiDropDown(
                      selectedOptionsInfoText:
                          "Selected Nationality (tap to remove)",
                      //--------end customization selection modal------------
                      listItems: [
                        {"name": "Sierra Leonean", "value": "sierra leonean"},
                        {"name": "Chinese", "value": "chinese"},
                        {"name": "Other", "value": "other"},
                      ],
                      textField: 'name',
                      valueField: 'value',
                      onSaved: (value) {
                        _nationality = value;
                        print('This is the value of natonality $_nationality');
                      },
                      onChanged: (value) {
                        print('The selected values are $value');
                      },
                      titleText: 'Select Nationality',
                      maxLength: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10), //Container
                    ),
                    Text("Choose Log Availability"),
                    Dropdown(
                      listItems: ["Yes", "No"],
                      dropdownClick: (selectItem) =>
                          _logbookAvailability = selectItem!,
                      selectItem: _logbookAvailability,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10), //Container
                    ),
                  ]),
              ExpansionTile(
                  title: Text(
                    'Species Composition:',
                  ),
                  children: <Widget>[
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Species Composition Numbering',
                      onSaved: (value) => setState(() =>
                          _speciesCompositionNumbering = int.tryParse(value!)!),
                    ),
                    InputField(
                      hintText: 'Name of Species',
                      onSaved: (value) => setState(() => _speciesName = value!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Number bags containing fishes',
                      onSaved: (value) => setState(() =>
                          _speciesCompositionBagsContainingFishes =
                              int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Weight of Individual Bags in KGS',
                      onSaved: (value) => setState(() =>
                          _speciesWeightOfIndividualBagsInKG =
                              int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Number of Cartons of Fishes',
                      onSaved: (value) => setState(() =>
                          _speciesCompositionNumberOfCartonsOfFishes =
                              int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Weight of Individual Cartons in KGS',
                      onSaved: (value) => setState(() =>
                          _speciesCompositionWeightOfIndividualCartonsInKG =
                              int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Weight of unsorted or loose fishes in KGS',
                      onSaved: (value) => setState(() =>
                          _speciesCompositionLooseFishKGS =
                              int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Total Weight of Fishes in KGS',
                      onSaved: (value) => setState(() =>
                          _speciesCompositionTotalWeight =
                              int.tryParse(value!)!),
                    ),
                  ]),
              InputField(
                textInputType: TextInputType.number,
                hintText: 'Total Weight of Fishes on Board in KGS',
                onSaved: (value) => setState(() =>
                    _speciesCompositionTotalWeightOfFishesOnBoardInKG =
                        int.tryParse(value!)!),
              ),
              InputField(
                textInputType: TextInputType.number,
                hintText: 'Total Weight of Shelfish On Board in KGS',
                onSaved: (value) => setState(() =>
                    _speciesCompositionTotalWeightOfShelfishOnBoardInKG =
                        int.tryParse(value!)!),
              ),
              InputField(
                hintText: 'Name of Vessel Captain',
                onSaved: (value) => setState(() => _vesselCaptainName = value!),
              ),
              InputField(
                hintText: 'Signature of Captain',
                onSaved: (value) => setState(() => _captainSignature = value!),
              ),

              /**************
               * 4 Discharge Locally Input 
               * ****************** */
              ExpansionTile(
                  title: Text(
                    'Discharged Locally Information:',
                  ),
                  children: <Widget>[
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Species Discharged Locally Numbering',
                      onSaved: (value) => setState(() =>
                          _dischargedLocallyNumbering = int.tryParse(value!)!),
                    ),
                    InputField(
                      hintText: 'Name of Species',
                      onSaved: (value) =>
                          setState(() => _dischargedLocallyName = value!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Number bags containing fishes',
                      onSaved: (value) => setState(() =>
                          _dischargedLocallyBagsContainingFishes =
                              int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Weight of Individual Bags in KGS',
                      onSaved: (value) => setState(() =>
                          _dischargedLocallyWeightOfIndividualBagsInKG =
                              int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Number of Cartons of Fishes',
                      onSaved: (value) => setState(() =>
                          _dischargedLocallyNumberOfCartonsOfFishes =
                              int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Weight of Individual Cartons in KGS',
                      onSaved: (value) => setState(() =>
                          _dischargedLocallyWeightOfIndividualCartonsInKG =
                              int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Weight of unsorted or loose fishes in KGS',
                      onSaved: (value) => setState(() =>
                          _dischargedLocallyLooseFishKGS =
                              int.tryParse(value!)!),
                    ),
                    InputField(
                      textInputType: TextInputType.number,
                      hintText: 'Total Weight of Fishes in KGS',
                      onSaved: (value) => setState(() =>
                          _dischargedLocallyTotalWeight =
                              int.tryParse(value!)!),
                    ),
                  ]),
              InputField(
                hintText: 'Name of Agent',
                onSaved: (value) => setState(() => _agentName = value!),
              ),
              InputField(
                hintText: 'Signature of Agent',
                onSaved: (value) => setState(() => _agentSignature = value!),
              ),
              SizedBox(
                height: 20,
                width: 100,
              ),
              ButtonWidget(
                text: 'Submit',
                onClicked: savedData,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
