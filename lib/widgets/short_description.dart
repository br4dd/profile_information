import 'package:flutter/material.dart';
import '../models/profile_infos.dart';
import '../styles/decorator/box_decorators.dart';

class ShortDescription extends StatelessWidget {
  //LIST OF PROFILE
  final List<ProfileInfos> infos;
  //INHERITED FROM THE style/decorator/box_decorators.dart
  final testing = BoxDecorator();

  ShortDescription(this.infos);

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
          child: Text(
            infos[0].shortDescription,
          ),
        ),
      ],
    );
  }
}
