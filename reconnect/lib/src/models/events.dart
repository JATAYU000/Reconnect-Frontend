class Events{
  int index;
  String heading;
  String year;
  String location;
  String date;
  String description;
  String dept;
  String time;

  Events({required this.index, 
  required this.heading,
  required this.year, 
  required this.location,
  required this.date,
   required this.description,
   required this.dept,
   required this.time});
}

List<Events> EventList = [
  Events(index: 1, heading: "Reunion", year: "2020", location: "Kuruppu park, Chennai", date: "21/07/2024", description: "description: Meet up",dept: "RAI",time:"10:00"),
  Events(index: 2, heading: "meetup", year: "2017", location: "Kumaran hall,Delhi", date: "21/06/2024", description: "description: just a union",dept: "CSE",time:"11:00"),
];