class DockObserverModel {
  final String type;

  int? numberOfVessels = 0;
  String vesselName = "";
  int licenseNumber = 0;
  String nameOfObserver = "";
  String licenseType = "";
  String callSign = "";
  int crewComposition = 0;
  String vesselType = "";

  // 3 Species Composition
  int speciesCompositionNumbering = 0;
  String speciesName = "";
  int speciesCompositionBagsContainingFishes = 0;
  int speciesWeightOfIndividualBagsInKG = 0;
  int speciesCompositionNumberOfCartonsOfFishes = 0;
  int speciesCompositionWeightOfIndividualCartonsInKG = 0;
  int speciesCompositionLooseFishKGS = 0;
  int speciesCompositionTotalWeight = 0;
  int speciesCompositionTotalWeightOfFishesOnBoardInKG = 0;
  int speciesCompositionTotalWeightOfShelfishOnBoardInKG = 0;
  String vesselCaptainName = "";
  String captainSignature = "";

  //4 Discharged Locally
  int dischargedLocallyNumbering = 0;
  String dischargedLocallyName = "";
  int dischargedLocallyBagsContainingFishes = 0;
  int dischargedLocallyWeightOfIndividualBagsInKG = 0;
  int dischargedLocallyNumberOfCartonsOfFishes = 0;
  int dischargedLocallyWeightOfIndividualCartonsInKG = 0;
  int dischargedLocallyLooseFishKGS = 0;
  int dischargedLocallyTotalWeight = 0;
  int dischargedLocallyTotalWeightOfFishesOnBoardInKG = 0;
  int dischargedLocallyTotalWeightOfShelfishOnBoardInKG = 0;
  String agentName = "";
  String agentSignature = "";

  DockObserverModel({
    required this.type,
    required this.numberOfVessels,
    required this.vesselName,
    required this.licenseNumber,
    required this.nameOfObserver,
    required this.licenseType,
    required this.callSign,
    required this.crewComposition,
    required this.vesselType,

    // 3 Species Composition
    required this.speciesCompositionNumbering,
    required this.speciesName,
    required this.speciesCompositionBagsContainingFishes,
    required this.speciesWeightOfIndividualBagsInKG,
    required this.speciesCompositionNumberOfCartonsOfFishes,
    required this.speciesCompositionWeightOfIndividualCartonsInKG,
    required this.speciesCompositionLooseFishKGS,
    required this.speciesCompositionTotalWeight,
    required this.speciesCompositionTotalWeightOfFishesOnBoardInKG,
    required this.speciesCompositionTotalWeightOfShelfishOnBoardInKG,
    required this.vesselCaptainName,
    required this.captainSignature,

    //4 Discharged Locally
    required this.dischargedLocallyNumbering,
    required this.dischargedLocallyName,
    required this.dischargedLocallyBagsContainingFishes,
    required this.dischargedLocallyWeightOfIndividualBagsInKG,
    required this.dischargedLocallyNumberOfCartonsOfFishes,
    required this.dischargedLocallyWeightOfIndividualCartonsInKG,
    required this.dischargedLocallyLooseFishKGS,
    required this.dischargedLocallyTotalWeight,
    required this.dischargedLocallyTotalWeightOfFishesOnBoardInKG,
    required this.dischargedLocallyTotalWeightOfShelfishOnBoardInKG,
    required this.agentName,
    required this.agentSignature,
  });
}
