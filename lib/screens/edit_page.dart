import 'package:flutter/material.dart';
import 'package:profile_screen/models/info_provider.dart';
import 'package:provider/provider.dart';

class EditPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newImage, newName, newJop, newLocation, newBio;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: EdgeInsets.only(left: 25.0),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                top: 20.0,
                left: MediaQuery.of(context).size.width / 2 - 95,
                child: Hero(
                  tag: 'profileImage',
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      image: DecorationImage(
                        image: AssetImage(
                          Provider.of<InfoProvider>(context).profileImage,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: 200.0,
                    height: 200.0,
                  ),
                ),
              ),
              Positioned(
                top: 203.0,
                left: MediaQuery.of(context).size.width / 2 - 40,
                child: InkWell(
                  splashColor: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Icon(Icons.camera_alt),
                    width: 100,
                    height: 29,
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Name',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xffE3E5E8),
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: InputDecoration(
                        hintText: Provider.of<InfoProvider>(context).name,
                      ),
                      onChanged: (newText) {
                        newName = newText;
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Occupation',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xffE3E5E8),
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: InputDecoration(
                        hintText: Provider.of<InfoProvider>(context).jop,
                      ),
                      onChanged: (newText) {
                        newJop = newText;
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Address',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xffE3E5E8),
                      ),
                    ),
                    TextField(
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: InputDecoration(
                        hintText: Provider.of<InfoProvider>(context).location,
                      ),
                      onChanged: (newText) {
                        newLocation = newText;
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "BIO",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Color(0xffE3E5E8),
                      ),
                    ),
                    TextField(
                      maxLines: 3,
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: InputDecoration(
                        hintText: Provider.of<InfoProvider>(context).bio,
                      ),
                      onChanged: (newText) {
                        newBio = newText;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                            child: Text(
                              'Update',
                              style: TextStyle(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width - 100,
                          height: 55.0,
                        ),
                        onTap: () {
                          if (newImage == null) {
                            newImage = Provider.of<InfoProvider>(context, listen: false).profileImage;
                          }
                          if (newName == null) {
                            newName = Provider.of<InfoProvider>(context,listen: false).name;
                          }
                          if (newJop == null) {
                            newJop = Provider.of<InfoProvider>(context,listen: false).jop;
                          }
                          if (newLocation == null) {
                            newLocation = Provider.of<InfoProvider>(context,listen: false).location;
                          }
                          if (newBio == null) {
                            newBio = Provider.of<InfoProvider>(context,listen: false).bio;
                          }
                          print(newName);
                          Provider.of<InfoProvider>(context, listen: false).updateInfo(newImage, newName, newJop, newLocation, newBio);
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
