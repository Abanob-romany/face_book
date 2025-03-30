import 'package:face_book/main.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String routeName = 'home';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          backgroundColor: white,
          toolbarHeight: 100,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Facebook",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color: Colors.blue,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/Plus.png",
                      height: 23.5,
                      width: 25,
                      fit: BoxFit.contain,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/Search.png",
                      height: 23.5,
                      width: 25,
                      fit: BoxFit.contain,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/Messenger.png",
                      height: 23.5,
                      width: 25,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/home.png",
                      height: 23.5,
                      width: 25,
                      fit: BoxFit.contain,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/videos.png",
                      height: 30,
                      width: 25.5,
                      fit: BoxFit.contain,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/Store.png",
                      height: 26,
                      width: 26,
                      fit: BoxFit.contain,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/Profile.png",
                      height: 30,
                      width: 30,
                      fit: BoxFit.contain,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/Notification.png",
                      height: 28,
                      width: 28,
                      fit: BoxFit.contain,
                    ),
                  ),
                  GestureDetector(
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/Ellipse 2.png"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Divider(thickness: 1.5, color: Color(0xff898F9C)),
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: CircleAvatar(
                                radius: 22,
                                backgroundImage: AssetImage(
                                  'assets/Ellipse 2.png',
                                ),
                              ),
                              suffixIcon: Image(
                                image: AssetImage('assets/Photos.png'),
                              ),
                              hintText: "What's in your mind?",
                              contentPadding: EdgeInsets.only(
                                left: 10,
                                top: 12,
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(thickness: 2, color: Color(0xff898F9C)),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 210,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image(image: AssetImage('assets/Group 7 1.png')),
                      ],
                    ),
                  ),
                ),
              ),
              postBuilder(),
              postBuilder(),
              postBuilder(),
              postBuilder(),
              postBuilder(),
              postBuilder(),
              postBuilder(),
              postBuilder(),
              postBuilder(),
              postBuilder(),
              postBuilder(),
              postBuilder(),
              postBuilder(),
              postBuilder(),
              postBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}

postBuilder({
  AssetImage? profileImage,
  Text? accountUserName,
  AssetImage? postPhoto,
}) => Column(
  children: [
    Divider(thickness: 2, color: Color(0xff898F9C)),

    Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundImage:
                    profileImage ?? AssetImage('assets/Ellipse 6.png'),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  accountUserName ?? Text('Route'),
                  Row(
                    children: [
                      Text('2h.', style: TextStyle(color: Color(0xff898F9C))),
                      SizedBox(width: 5),
                      Image(image: AssetImage('assets/Earth.png')),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Image(image: AssetImage('assets/more.png')),
            ],
          ),
          SizedBox(height: 10),
          Image(image: postPhoto ?? AssetImage('assets/Rectangle 10.png')),
          SizedBox(height: 10),
          Row(
            children: [
              Image(image: AssetImage('assets/Frame 6.png')),
              Spacer(),
              Image(image: AssetImage('assets/Bookmark.png')),
            ],
          ),
        ],
      ),
    ),
  ],
);
