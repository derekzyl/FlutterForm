import 'package:flutter/material.dart';
import 'package:zuri_hng/models/form_field.dart';
import 'package:intl/intl.dart';


class FormList extends StatelessWidget {
final List<TheForm> formT;
FormList({required this.formT});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: formT.map((fm){
        return  Card(child:
        Row(
          children: [
            Container(
              margin:EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                    color:Colors.orange,
                    width: 3.0,
                  )
              ),
              padding: EdgeInsets.all(10.0),
              child: Text(
                  '${fm.name}',
                style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.orange,
                fontSize: 20.0),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                Text( '${fm.course}', style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                ),
                ),
                Text( DateFormat.MMMEd().format(fm.date), style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
          ],
        ),
        );
      }).toList()
    );
  }
}
