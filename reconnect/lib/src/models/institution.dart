import "package:reconnect/src/constants/image_strings.dart";

class Institution{
  String name;
  String instituteIcon;
  String dept;
  String year;
  Institution({required this.name,required this.instituteIcon,required this.dept,required this.year});

  Institution.fromMap(Map map)        // This Function helps to convert our Map into our User Object
      : this.name = map["name"],
        this.dept = map['dept'],
        this.year = map['year'],
        this.instituteIcon = map['instituteIcon'];

  Map toMap() {               // This Function helps to convert our User Object into a Map.
    return {
      "name": this.name,
      "dept": this.dept,
      "year": this.year,
      "instituteIcon": this.instituteIcon,
    };
  }

}

List<Institution> InstitutionList =[
  Institution(name: "BITS Pilani (Goa campus) ",instituteIcon: ImageConstants.ColBit,dept:"",year:""),
  Institution(name: "VIT (Vellore campus)",instituteIcon: ImageConstants.ColVit,dept:"",year:""),
  Institution(name: "Amrita Vishwa Vidyapeetham\n(Amritapuri Campus)",instituteIcon: ImageConstants.ColAmt,dept:"",year:""),
  Institution(name: "IIT Delhi",instituteIcon: ImageConstants.ColIit,dept:"",year:""),
];

List<Institution> Dashboard = [];