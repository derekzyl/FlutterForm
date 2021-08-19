import 'package:flutter/material.dart';

class NewForm extends StatelessWidget {
  final nameC = TextEditingController();
  final  courseC = TextEditingController();
 final dynamic hit;
 NewForm({required this.hit});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,color: Colors.white38,
      child: Container(
        padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children:<Widget> [
          TextField(
            decoration: InputDecoration(labelText: 'name',alignLabelWithHint: true, hoverColor: Colors.green),
            controller:nameC ,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'course',alignLabelWithHint: true, hoverColor: Colors.green),
            controller:courseC ,
          ),
          FlatButton(onPressed: (){
            hit(nameC.text, courseC.text);
          }, child: Text('add data'),
          textColor: Colors.orange,)
        ],
      ),
    ),
    );
  }
}
