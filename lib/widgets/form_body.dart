import 'package:flutter/material.dart';
import 'package:zuri_hng/models/form_field.dart';
import 'package:zuri_hng/widgets/form_list.dart';
import  'dart:math';

import 'package:zuri_hng/widgets/new_form.dart';

class FormForm extends StatefulWidget {

  @override
  _FormFormState createState() => _FormFormState();
}

class _FormFormState extends State<FormForm> {
  final List<TheForm> _newForm =[
 TheForm(   id:'t1',
    name: 'derek Ogagarue',
  course: 'Flutter',
  date: DateTime.now())

  ];

  void _addForm(String fmName, String fmCourse){
    final _newFM = TheForm(id:'${Random.secure()}' , name: fmName, course: fmCourse, date: DateTime.now());
        setState(() {
          _newForm.add(_newFM);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.all(15.0),
          color: Colors.black26,
          elevation: 7.0,
child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   Text('intern form',

  style: TextStyle( fontWeight: FontWeight.bold,

  ),),
),
        ),
        NewForm(hit: _addForm),
        FormList(formT:_newForm)

      ],
    );
  }
}

