import 'package:flutter/material.dart';
import '../models/profile_infos.dart';

class BasicInfo extends StatelessWidget {
  //LIST OF PROFILE
  final List<ProfileInfos> infos;
  //INHERITED FROM THE style/decorator/box_decorators.dart

  BasicInfo(this.infos);

  @override
  Widget build(BuildContext context) {
    Text myText(sample) {
      return Text(
        sample,
        style: TextStyle(fontWeight: FontWeight.bold),
      );
    }

    return Container(
      // padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              myText(
                'Age \t\t\t\t\t\t\t\t\t: ${infos[0].age}',
              ),
              myText(
                'Birthday \t: ${infos[0].birthDate}',
              ),
              myText(
                'Gender \t\t\t: ${infos[0].gender}',
              ),
              myText(
                'Status \t\t\t\t: ${infos[0].status}',
              ),
              myText(
                'Religion \t: ${infos[0].religion}',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
