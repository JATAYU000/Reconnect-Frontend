import "package:reconnect/src/constants/image_strings.dart";

class Institution{
  String name;
  String instituteIcon;
  Institution({required this.name,required this.instituteIcon});
}

List<Institution> InstitutionList =[
  Institution(name: "BITS Pilani (Goa campus) ",instituteIcon: ImageConstants.ColBit),
  Institution(name: "VIT (Vellore campus)",instituteIcon: ImageConstants.ColVit),
  Institution(name: "Amrita Vishwa Vidyapeetham\n(Amritapuri Campus)",instituteIcon: ImageConstants.ColAmt),
  Institution(name: "IIT Delhi",instituteIcon: ImageConstants.ColIit),

];