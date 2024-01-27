import 'package:reconnect/src/constants/image_strings.dart';

class Participants{
  final String profileImage;
  final String name;

  Participants({
    required this.profileImage,
    required this.name,
    
  });
}

List< Participants> participantList=[
  Participants(profileImage: ImageConstants.NavProfile, name: "K K Surendran"),
  Participants(profileImage: ImageConstants.NavProfile, name: "Shrivatva"),
  Participants(profileImage: ImageConstants.NavProfile, name: "Gautham")
];
