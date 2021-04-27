import 'package:flutter/material.dart';
import '../models/profile_infos.dart';
import '../styles/decorator/box_decorators.dart';

class PersonalInformation extends StatelessWidget {
  //LIST OF PROFILE
  final List<ProfileInfos> infos;
  //INHERITED FROM THE style/decorator/box_decorators.dart
  final testing = BoxDecorator();

  PersonalInformation(this.infos);

  BoxDecoration boxDecoration() {
    return testing.myBoxDecoration();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          child: Text(
            'Personal Information',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          decoration: boxDecoration(),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    infos[0].name,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    infos[0].email,
                  ),
                  Text(
                    infos[0].address,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    infos[0].phoneNumber,
                  ),
                  //ADDING CALL ICON
                  IconButton(
                    icon: Icon(Icons.call_rounded),
                    onPressed: () {},
                    color: Theme.of(context).backgroundColor,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
