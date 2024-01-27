import 'package:reconnect/src/constants/image_strings.dart';

class Queries {
  final String ProfileIcon;
  final String PostDeatials;
  final String username;
  Queries({required this.ProfileIcon,required this.PostDeatials,required this.username});
}
List<Queries>QueryList=[
  Queries(ProfileIcon: ImageConstants.NavProfile, PostDeatials: "Lets meet!!!.",username: "Shrivatva"),
  Queries(ProfileIcon: ImageConstants.NavProfile, PostDeatials: "What's the time? ",username: "Goutham"),
];