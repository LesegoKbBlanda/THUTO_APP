import 'package:flutter/material.dart';
import 'package:thuto_app/model/subject_model.dart';

class SubjectDetail extends StatelessWidget {
  final SubjectModel subjectModel;

  const SubjectDetail({Key? key, required this.subjectModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(subjectModel.name),),
      body: Column(
        children: [
          Image.network(subjectModel.ImageUrl),
          SizedBox(
            height: 10,
          ),
          Text(subjectModel.desc,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
        ],
      ),
    );
  }
}