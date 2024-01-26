class Events{
  int index;
  String heading;
  String year;
  String location;
  String date;
  String description;
  String dept;

  Events({required this.index, 
  required this.heading,
  required this.year, 
  required this.location,
  required this.date,
   required this.description,
   required this.dept});
}

List<Events> EventList = [
  Events(index: 2, heading: "Reunion", year: "2020", location: "Kuruppu park, Chennai", date: "21/07/2024", description: "description: Meet up",dept: "RAI"),
  Events(index: 2, heading: "meetup", year: "2017", location: "Kumaran hall,Delhi", date: "21/06/2024", description: "description: just a union",dept: "CSE"),
];