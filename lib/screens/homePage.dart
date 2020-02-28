import 'package:flutter/material.dart';
import 'package:profile_screen/models/info_provider.dart';
import 'package:profile_screen/screens/profile_image.dart';
import 'package:provider/provider.dart';
import 'package:profile_screen/widgets/list_item.dart';
import 'package:profile_screen/widgets/progress_bar.dart';
import 'package:profile_screen/widgets/user_info.dart';
import 'package:profile_screen/screens/edit_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //String bio =
  //  'Hello I am a Student of Menofia University.I joined this community to help others in need.';
//String name='Ahmed Sakr',jop='Student',location='Cairo , Egypt';
  @override
  Widget build(BuildContext context) {
    //String profileImage = 'assets/profile.jpg';
    return Scaffold(
      backgroundColor: Color(0xFF04022B),
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 25.0),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 25.0),
            child: Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 150,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                top: 205.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0),
                    ),
                    color: Colors.white,
                  ),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(
                top: 25.0,
                left: 30.0,
                child: Row(
                  children: <Widget>[
                    InkWell(
                      child: Hero(
                        tag: 'profileImage',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(30.0)),
                            image: DecorationImage(
                              image: AssetImage(
                                Provider.of<InfoProvider>(context).profileImage,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: 150.0,
                          height: 150.0,
                        ),
                      ),
                      onTap: () {
                        //print(Provider.of<InfoProvider>(context).profileImage);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfileImage(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          Provider.of<InfoProvider>(context).name, //todo
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white, //Color(0xff2CC696),
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        UserInfo(
                          icon: Icons.work,
                          data: Provider.of<InfoProvider>(context).jop,
                        ),
                        UserInfo(
                          icon: Icons.location_on,
                          data: Provider.of<InfoProvider>(context).location,
                        ),
                        Row(
                          children: <Widget>[
                            Image.asset(
                              'assets/donate.png',
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 6.0,
                            ),
                            //todo
                            Text(
                              '14 Donation',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          child: Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Center(
                              child: Text(
                                'Edit',
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EditPage(),
                                ));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 230.0,
                right: 0.0,
                left: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        Provider.of<InfoProvider>(context).bio,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Color(0xffB4B6B6),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Activities',
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Color(0xff0D2F24),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ProgressBar(
                          progressValue: 100.0,
                          category: 'Education',
                          color: Colors.amber),
                      ProgressBar(
                          progressValue: 130.0,
                          category: 'Medicine',
                          color: Colors.green),
                      ProgressBar(
                          progressValue: 50.0,
                          category: 'Clothes',
                          color: Colors.blue),
                      ProgressBar(
                          progressValue: 60.0,
                          category: 'Blood Donation',
                          color: Colors.red),
                      ProgressBar(
                          progressValue: 30.0,
                          category: 'Furniture',
                          color: Colors.deepOrangeAccent),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Last Donations',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return ListItem();
                      },
                      itemCount: 4,
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 410,
                  ),
                ),
              ],
            ),
            //width: 500,
            //height: 555,
          ),
        ],
      ),
    );
  }
}
