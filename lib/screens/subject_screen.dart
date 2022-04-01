import 'package:flutter/material.dart';
import 'package:thuto_app/model/subject_model.dart';
import 'package:thuto_app/screens/dashboard/dashboard.dart';
import 'package:thuto_app/screens/dashboard/subjectDetail.dart';
import 'package:thuto_app/screens/navbar.dart';

class Subject extends StatefulWidget {
  const Subject({Key? key}) : super(key: key);

  @override
  _SubjectState createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {

    static List<String> subjectname =['Mathematics','Chemistry','Physical Science',];

    static List url = ['https://miro.medium.com/max/1400/1*L76A5gL6176UbMgn7q4Ybg.jpeg',
      'https://www.phoenixcollegiate.org/_site/data/files/images/auto_upload/0C9DDB82C635231C72538038701A9D38.jpg',
      'https://images.theconversation.com/files/191827/original/file-20171025-25516-g7rtyl.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop',];

    final List<SubjectModel> subjectdata = List.generate(
        subjectname.length,
            (index)
        => SubjectModel('${subjectname[index]}', '${url[index]}','${subjectname[index]} description'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select subject of preference'),),
      body: ListView.builder(
           itemCount: subjectdata.length,
          itemBuilder: (context,index){
             return Card(
               child: ListTile(
                 title: Text(subjectdata[index].name),
                 leading: SizedBox(
                   width: 50,
                   height: 50,
                   child: Image.network(subjectdata[index].ImageUrl),
                 ),
                 onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GridDashboard()));
                 },
               ),
             );
          }
      )
    );
  }
}