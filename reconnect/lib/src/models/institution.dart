import "package:reconnect/src/constants/image_strings.dart";

class Institution{
  String name;
  String instituteIcon;
  String dept;
  String year;
  Institution({required this.name,required this.instituteIcon,required this.dept,required this.year});
}

List<Institution> InstitutionList =[
  Institution(name: "BITS Pilani (Goa campus) ",instituteIcon: ImageConstants.ColBit,dept:"",year:""),
  Institution(name: "VIT (Vellore campus)",instituteIcon: ImageConstants.ColVit,dept:"",year:""),
  Institution(name: "Amrita Vishwa Vidyapeetham\n(Amritapuri Campus)",instituteIcon: ImageConstants.ColAmt,dept:"",year:""),
  Institution(name: "IIT Delhi",instituteIcon: ImageConstants.ColIit,dept:"",year:""),
];

List<Institution> Dashboard = [];