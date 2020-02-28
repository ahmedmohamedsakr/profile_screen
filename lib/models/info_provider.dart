import 'package:flutter/foundation.dart';

class InfoProvider extends ChangeNotifier {
  String profileImage='assets/profile.jpg', name='Ahmed Sakr', jop='Student', location='Cairo , Egypt',
      bio='Hello I am a Student of Menofia University.I joined this community to help others in need.';

  String get getImage{
    return profileImage;
  }

  String get getName{
    return name;
  }

  String get getJop{
    return jop;
  }

  String get getLocation{
    return location;
  }

  String get getBio{
    return bio;
  }
  void updateInfo(String newImage,String newName,String newJop,String newLocation,String newBio) {
    profileImage = newImage;
    name = newName;
    jop = newJop;
    location = newLocation;
    bio = newBio;
    notifyListeners();
  }

}
