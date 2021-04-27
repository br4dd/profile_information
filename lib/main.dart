import 'package:flutter/material.dart';
import './models/profile_infos.dart';
import './widgets/basic_info.dart';
import './widgets/educational_bg.dart';
import './widgets/short_description.dart';
import './widgets/personal_information.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.white,
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
              headline6: TextStyle(
                // fontFamily: 'OpenSans',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
        appBarTheme: AppBarTheme(
          textTheme: ThemeData.light().textTheme.copyWith(
                headline6: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //HERE YOU CAN PUT YOUR VALUES
  // IT'S EITHER FROM LOCAL DB OR ONLINE DB
  final List<ProfileInfos> _userProfileInfos = [
    ProfileInfos(
      id: 'id1',
      name: 'Hello World',
      email: 'the_email',
      address: 'the_address',
      phoneNumber: 'the_phoneNumber',
      shortDescription:
          'Here\'s a FREE AND OPENSOURCE template for your little project on PROFILE INFORMATION.' +
              'I\'m using FLUTTER in this project.' +
              'Feel free to clone or pull any request to this little project.' +
              'Free free to report any redundant code or not a clean code.' +
              'I\'m just here to share my little project. Comments will do. THANKS! :)',
      age: 99,
      birthDate: 'the_birthday',
      gender: 'the_gender',
      status: 'the_status',
      religion: 'the_religion',
      postGrad: [
        'postgrad_course',
        'postgrad_school',
        'postgrad_year',
      ],
      underGrad: [
        'undergrad_course',
        'undergrad_school',
        'undergrad_year',
      ],
      secondary: [
        'secondary_school',
        'secondary_year',
      ],
      primary: [
        'primary_school',
        'primary_year',
      ],
    )
  ];
  //FOR REUSABLE BOXDECORATION
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
        border: Border.all(
      color: Colors.blue,
      width: 3,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Information'),
      ),
      body: ListView(
        children: [
          Container(
            // todo
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              //for even spacing
              children: [
                //the COLUMNS
                Column(
                  children: [
                    Container(
                      width: 150.0,
                      height: 150.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.fill,
                          //FOR THE PICTURE
                          //ADD IMAGE ASSETS ON pubspec.yaml assets
                          image: AssetImage('assets/images/profile_pic.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: PersonalInformation(_userProfileInfos),
                ),
                Container(
                  width: double.infinity,
                  child: ShortDescription(_userProfileInfos),
                ),
                //JUST FOR THE TITLES ON BASIC INFORMATION AND EDUCAITONAL BACKGROUND
                Container(
                  width: double.infinity,
                  decoration: myBoxDecoration(),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Basic Information',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            'Education Background',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          BasicInfo(_userProfileInfos),
                        ],
                      ),
                      //TO DRAW A DIVIDER FOR BASIC INFO AND EDUCATIONAL BACKGROUND
                      VerticalDivider(
                        color: Colors.blue,
                        thickness: 3,
                      ),
                      Column(
                        children: [EducationBG(_userProfileInfos)],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
