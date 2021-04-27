import 'package:flutter/material.dart';
import '../models/profile_infos.dart';

class EducationBG extends StatelessWidget {
  final List<ProfileInfos> infos;
  //INHERITED FROM THE style/decorator/box_decorators.dart

  EducationBG(this.infos);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Post-Grad',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        //TO ITERATE THE VALUES OF POSTGRAD
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int index = 0; index < infos[0].postGrad.length; index++)
                Text(infos[0].postGrad[index])
            ],
          ),
        ),
        Text(
          'Under-Grad',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        //TO ITERATE THE VALUES OF UNDERGRAD
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int index = 0; index < infos[0].postGrad.length; index++)
                Text(infos[0].underGrad[index])
            ],
          ),
        ),
        Text(
          'Secondary',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        //TO ITERATE THE VALUES OF SECONDARY
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int index = 0; index < infos[0].secondary.length; index++)
                Text(infos[0].secondary[index])
              // Text(infos[0].secondary[0]), FOR TESTING
            ],
          ),
        ),
        Text(
          'Primary',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        //TO ITERATE THE VALUES OF PRIMARY
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int index = 0; index < infos[0].primary.length; index++)
                Text(infos[0].primary[index])
            ],
          ),
        ),
      ],
    );
  }
}
