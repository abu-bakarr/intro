import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String _vesselName = "";
  int _numberOfVessels = 0;
  int _licenseNumber = 0;
  String _dateOfLicenseIssue = "";
  String _licenseExpiringDate = "";
  String _licenseType = "";
  String _vesselType = "";
  String _observerName = "";
  String _callSign = "";
  int _crewComposition = 0;
  String _membersNationality = "";
  String _logbookAvailability = "";
  int _numberOfSpeciesComposition = 0;
  String _speciesName = "";
  int _numberOfBagsContainingFish = 0;
  int _bagsKG = 0;
  int _cartoons = 0;
  int _cartoonsKG = 0;
  int _loosefish = 0;
  int _totalWeightKG = 0;
  int _totalWeightOfFishOnBoardKG = 0;
  int _totalWeightOfShelfishOnBoard = 0;
  String _captainName = "";
  String _captainSignature = "";
  int _numberOfSpeciesDischargedLocallyAndWeights = 0;
  String _nameOfSpeciesDischargedLocallyAndWeights = "";
  int _numberOfBagsContainingFishesDischargedLocally = 0;
  int _bagsKGDischargedLocally = 0;
  int _numberOfCartonOfFishDischargedLocally = 0;
  int _individualCartonWeightsInKGDischargedLocally = 0;
  int _looseKGDischargeLocally = 0;
  int _totalWeightKGDischargeLocally = 0;
  String _agentName = "";
  String _agentSignature = "";
  String _remarks = "";
  String _dockObserverName = "";
  String _dockObserverSignature = "";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildVesselName() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Name of Vessel",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Vessel Name cannot empty";
        }
      },
      onSaved: (value) => setState(() => _vesselName = value!),
    );
  }

  Widget _buildNumberOfVessel() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Number of Vessel",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Number of vessel cannot be empty";
        }
      },
      onSaved: (value) => setState(() => _numberOfVessels = int.parse(value!)),
    );
  }

  Widget _buildLicenseNumber() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "License Number",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Name cannot empty";
        }
      },
      onSaved: (value) => setState(() => _licenseNumber = int.parse(value!)),
    );
  }

  Widget _buildDateOfLicenseIssue() {
    return FormBuilderDateTimePicker(
        name: '_dateOfLicenseIssue',
        // onChanged: _onChanged,
        inputType: InputType.date,
        decoration: InputDecoration(
          labelText: 'Date  License Issue',
        ),
        initialValue: DateTime(2018, 4, 13),
        enabled: true,
        onSaved: (value) => setState(
              () => _dateOfLicenseIssue = value.toString(),
            ));
  }

  Widget _buildLicenseExpiringDate() {
    return FormBuilderDateTimePicker(
        name: '_licenseExpiringDate',
        // onChanged: _onChanged,
        inputType: InputType.date,
        decoration: InputDecoration(
          labelText: 'License Expiring Date',
        ),
        initialValue: DateTime(2021, 4, 13),
        enabled: true,
        onSaved: (value) => setState(
              () => _licenseExpiringDate = value.toString(),
            ));
  }

  Widget _buildLincenseType() {
    return FormBuilderChoiceChip(
      name: 'choice_chip',
      decoration: InputDecoration(
        labelText: 'License Type',
      ),
      options: [
        FormBuilderFieldOption(value: 'local', child: Text('Local')),
        FormBuilderFieldOption(value: 'foreign', child: Text('Foreign')),
      ],
      onSaved: (value) => setState(() => _licenseType = value.toString()),
    );
  }

  Widget _buildVesselType() {
    return FormBuilderChoiceChip(
      name: 'choice_chip',
      decoration: InputDecoration(
        labelText: 'Vessel Type',
      ),
      options: [
        FormBuilderFieldOption(
            value: 'mid-water_trawler', child: Text('Mid-water Trawler')),
        FormBuilderFieldOption(
            value: 'pelagic_trawler', child: Text('Pelagic Trawler')),
        FormBuilderFieldOption(
            value: 'demersal_type', child: Text('Demersal Type')),
        FormBuilderFieldOption(
            value: 'tuna_vessel', child: Text('Tuna Vessel')),
        FormBuilderFieldOption(
            value: 'longline_vessel', child: Text('Longline Vessel')),
        FormBuilderFieldOption(
            value: 'shrimper_vessel', child: Text('Shrimper Vessel')),
        FormBuilderFieldOption(
            value: 'supply_vessel', child: Text('Supply Vessel')),
        FormBuilderFieldOption(
            value: 'carrier_vessel', child: Text('Carrier Vessel')),
        FormBuilderFieldOption(
            value: 'other_vessel', child: Text(' Other Vessel')),
      ],
      onSaved: (value) => setState(() => _vesselType = value.toString()),
    );
  }

  Widget _buildNameOfObserver() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Name of Observer",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Observer Name cannot empty";
        }
      },
      onSaved: (value) => setState(() => _observerName = value!),
    );
  }

  Widget _buildCallSign() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Call sign of vessels",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.multiline,
      textInputAction: TextInputAction.newline,
      minLines: 1,
      maxLines: 5,
      validator: (value) {
        if (value!.isEmpty) {
          return "Call sign of vessels cannot empty";
        }
      },
      onSaved: (value) => setState(() => _callSign = value!),
    );
  }

//2. Crew
  Widget _buildCrewComposition() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Crew Composition",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Crew Composition cannot empty";
        }
      },
      onSaved: (value) => setState(() => _crewComposition = int.parse(value!)),
    );
  }

  Widget _buildMembersNationality() {
    return FormBuilderChoiceChip(
      name: 'choice_chip',
      decoration: InputDecoration(
        labelText: 'Members Nationality',
      ),
      options: [
        FormBuilderFieldOption(
            value: 'sierra_leonean', child: Text('Sierra Leoneans')),
        FormBuilderFieldOption(value: 'chinese', child: Text('Chinese')),
        FormBuilderFieldOption(
            value: 'other_national', child: Text('Other Nationality')),
      ],
      onSaved: (value) =>
          setState(() => _membersNationality = value.toString()),
    );
  }

  Widget _buildLogbookAvailabity() {
    return FormBuilderChoiceChip(
      name: 'choice_chip',
      decoration: InputDecoration(
        labelText: 'Logbook Availability',
      ),
      options: [
        FormBuilderFieldOption(value: 'yes', child: Text('Yes')),
        FormBuilderFieldOption(value: 'no', child: Text('No')),
      ],
      onSaved: (value) =>
          setState(() => _logbookAvailability = value.toString()),
    );
  }

//3.1 Species Composition in tabular format
  Widget _buildNumberOfSpeciesComposition() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Number of species composition",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "species Composition cannot empty";
        }
      },
      onSaved: (value) =>
          setState(() => _numberOfSpeciesComposition = int.parse(value!)),
    );
  }

  Widget _buildNameOfSpecies() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Name of Species",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Species Name cannot empty";
        }
      },
      onSaved: (value) => setState(() => _speciesName = value!),
    );
  }

  Widget _buildNumberOfBagsContainingFish() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Number of bags containing fish",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Number of bags containing fish cannot be empty";
        }
      },
      onSaved: (value) =>
          setState(() => _numberOfBagsContainingFish = int.parse(value!)),
    );
  }

  Widget _buildbagsKG() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Weight of Individual Bags in KGS",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Weight of Individual Bags cannot be empty";
        }
      },
      onSaved: (value) => setState(() => _bagsKG = int.parse(value!)),
    );
  }

  Widget _buildnumberOfCartonOfFish() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Number of Cartons of Fishes",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Number of Cartons of Fishes cannot be empty";
        }
      },
      onSaved: (value) => setState(() => _cartoons = int.parse(value!)),
    );
  }

  Widget _buildIndividualCartonWeightsInKG() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Weight of Individual Cartons in KGS",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Weight of Individual Cartons in KGS cannot be empty";
        }
      },
      onSaved: (value) => setState(() => _cartoonsKG = int.parse(value!)),
    );
  }

  Widget _buildLooseKG() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Weight of unsorted or loose fishes in KGS",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Weight of unsorted or loose fishes in KGS cannot be empty";
        }
      },
      onSaved: (value) => setState(() => _loosefish = int.parse(value!)),
    );
  }

  Widget _buildTotalWeightKG() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Total Weight of Fishes in KGS",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Total Weight of Fishes in KGS cannot be empty";
        }
      },
      onSaved: (value) => setState(() => _totalWeightKG = int.parse(value!)),
    );
  }

  Widget _buildTotalWeightOfFishOnBoardKG() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Total Weight of Fishes on Board in KGS",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Total Weight of Fishes on Board in KGS cannot be empty";
        }
      },
      onSaved: (value) =>
          setState(() => _totalWeightOfFishOnBoardKG = int.parse(value!)),
    );
  }

  Widget _buildTotalWeightOfShelfishOnBoard() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Total Weight of Shelfish On Board in KGS",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Total Weight of Shelfish On Board in KGS cannot be empty";
        }
      },
      onSaved: (value) =>
          setState(() => _totalWeightOfShelfishOnBoard = int.parse(value!)),
    );
  }

  Widget _buildCaptainName() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Name of Captain",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Captain Name cannot empty";
        }
      },
      onSaved: (value) => setState(() => _captainName = value!),
    );
  }

  Widget _buildCaptainSignature() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Signature of Captain",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Captain Signature cannot empty";
        }
      },
      onSaved: (value) => setState(() => _captainSignature = value!),
    );
  }

// 4. Species Discharged Locally and Weights in tabular format:
  Widget _buildnumberOfSpeciesDischargedLocallyAndWeights() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Number of Species Discharged Locally and Weights",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Number of Species Discharged cannot be empty";
        }
      },
      onSaved: (value) => setState(() =>
          _numberOfSpeciesDischargedLocallyAndWeights = int.parse(value!)),
    );
  }

  Widget _buildNameOfSpeciesDischargedLocallyAndWeights() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Name of Species Discharged Locally and Weights",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Species Name cannot empty";
        }
      },
      onSaved: (value) =>
          setState(() => _nameOfSpeciesDischargedLocallyAndWeights = value!),
    );
  }

  Widget _buildNumberOfBagsContainingFishesDischargedLocally() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Number of Species Discharged Locally and Weights",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Number of Species Discharged cannot be empty";
        }
      },
      onSaved: (value) => setState(() =>
          _numberOfBagsContainingFishesDischargedLocally = int.parse(value!)),
    );
  }

  Widget _buildbagsKGDischargedLocally() {
    return TextFormField(
      decoration: InputDecoration(
        labelText:
            "Weight of Individual Bags in KGS Discharged Locally Discharged Locally",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Weight of Individual Bags cannot be empty";
        }
      },
      onSaved: (value) =>
          setState(() => _bagsKGDischargedLocally = int.parse(value!)),
    );
  }

  Widget _buildnumberOfCartonOfFishDischargedLocally() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Number of Cartons of Fishes Discharged Locally",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Number of Cartons of Fishes cannot be empty";
        }
      },
      onSaved: (value) => setState(
          () => _numberOfCartonOfFishDischargedLocally = int.parse(value!)),
    );
  }

  Widget _buildIndividualCartonWeightsInKGDischargedLocally() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Weight of Individual Cartons in KGS Discharged Locally",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Weight of Individual Cartons in KGS cannot be empty";
        }
      },
      onSaved: (value) => setState(() =>
          _individualCartonWeightsInKGDischargedLocally = int.parse(value!)),
    );
  }

  Widget _buildLooseKGDischargeLocally() {
    return TextFormField(
      decoration: InputDecoration(
        labelText:
            "Weight of unsorted or loose fishes in KGS Discharged Locally",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Weight of unsorted or loose fishes in KGS cannot be empty";
        }
      },
      onSaved: (value) =>
          setState(() => _looseKGDischargeLocally = int.parse(value!)),
    );
  }

  Widget _buildTotalWeightKGDischargeLocally() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Total Weight of Fishes in KGS",
        border: OutlineInputBorder(),
      ),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value!.isEmpty) {
          return "Total Weight of Fishes in KGS cannot be empty";
        }
      },
      onSaved: (value) =>
          setState(() => _totalWeightKGDischargeLocally = int.parse(value!)),
    );
  }

  Widget _buildAgentName() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Name of Agent",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Agent Name cannot empty";
        }
      },
      onSaved: (value) => setState(() => _agentName = value!),
    );
  }

  Widget _buildAgentSignature() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Signature of Agent",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Agent Signature cannot empty";
        }
      },
      onSaved: (value) => setState(() => _agentSignature = value!),
    );
  }

  Widget _buildRemark() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Remarks",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Remarks cannot empty";
        }
      },
      onSaved: (value) => setState(() => _remarks = value!),
    );
  }

  Widget _buildDockObserverName() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Dock Observer Name",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Dock Observer name cannot empty";
        }
      },
      onSaved: (value) => setState(() => _dockObserverName = value!),
    );
  }

  Widget _buildDockObserverSignature() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Dock Observer Signature",
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return "Dock Observer Signature cannot empty";
        }
      },
      onSaved: (value) => setState(() => _dockObserverSignature = value!),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Dock Observer Form')),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //Padding

              _buildVesselName(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildNumberOfVessel(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildLicenseNumber(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildDateOfLicenseIssue(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildLicenseExpiringDate(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildLincenseType(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildVesselType(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildNameOfObserver(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildCallSign(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildCrewComposition(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildMembersNationality(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildLogbookAvailabity(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildNumberOfSpeciesComposition(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildNameOfSpecies(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildNumberOfBagsContainingFish(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildbagsKG(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildnumberOfCartonOfFish(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildIndividualCartonWeightsInKG(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildLooseKG(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildTotalWeightKG(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildTotalWeightOfFishOnBoardKG(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildTotalWeightOfShelfishOnBoard(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildCaptainName(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildCaptainSignature(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildnumberOfSpeciesDischargedLocallyAndWeights(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildNameOfSpeciesDischargedLocallyAndWeights(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildNumberOfBagsContainingFishesDischargedLocally(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildbagsKGDischargedLocally(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildnumberOfCartonOfFishDischargedLocally(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildIndividualCartonWeightsInKGDischargedLocally(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildLooseKGDischargeLocally(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildTotalWeightKGDischargeLocally(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildAgentName(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildAgentSignature(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildRemark(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildDockObserverName(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              _buildDockObserverSignature(),
              Padding(
                padding: EdgeInsets.all(10), //Container
              ),
              SizedBox(
                height: 0,
                width: 50,
              ),
              ElevatedButton(
                onPressed: () => {
                  if (!_formKey.currentState!.validate()) {},
                  _formKey.currentState!.save(),
                  print(_vesselName),
                  print(_numberOfVessels),
                  print(_licenseNumber),
                  print(_dateOfLicenseIssue),
                  print(_licenseExpiringDate),
                  print(_licenseType),
                  print(_vesselType),
                  print(_observerName),
                  print(_callSign),
                  print(_crewComposition),
                  print(_membersNationality),
                  print(_logbookAvailability),
                  print(_numberOfSpeciesComposition),
                  print(_speciesName),
                  print(_numberOfBagsContainingFish),
                  print(_bagsKG),
                  print(_cartoons),
                  print(_cartoonsKG),
                  print(_loosefish),
                  print(_totalWeightKG),
                  print(_totalWeightOfFishOnBoardKG),
                  print(_totalWeightOfShelfishOnBoard),
                  print(_captainName),
                  print(_captainSignature),
                  print(_numberOfSpeciesDischargedLocallyAndWeights),
                  print(_nameOfSpeciesDischargedLocallyAndWeights),
                  print(_numberOfBagsContainingFishesDischargedLocally),
                  print(_bagsKGDischargedLocally),
                  print(_numberOfCartonOfFishDischargedLocally),
                  print(_individualCartonWeightsInKGDischargedLocally),
                  print(_looseKGDischargeLocally),
                  print(_totalWeightKGDischargeLocally),
                  print(_agentName),
                  print(_agentSignature),
                  print(_remarks),
                  print(_dockObserverName),
                  print(_dockObserverSignature),
                  print(_remarks),
                },
                child: Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
