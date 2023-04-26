import 'package:flutter/material.dart';
import 'SubjectFaculty.dart';
void main() {
  runApp(MaterialApp(
    home: MyList(),
  ));
}

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {

  // List<String> subjects =[
  //   "AI_DS",
  //   "DMBI",
  //   "WebX",
  //   "WT",
  //   "MAD_PWA",
  //   "SN_Lab",
  //   "BI_Lab",
  //   "EHF_Lab"
  //  ];


  List<SubjectFaculty> subjects =[
    SubjectFaculty(sub:"AI_DS",teacher:"Prof. Prasad Padalkar",lecture:"4 Lectures per week"),
    SubjectFaculty(sub:"MAD_PWA",teacher:"Prof. Nilesh Ghavate",lecture:"2 Lectures per week"),
    SubjectFaculty(sub:"IOT",teacher:"Prof. Janhavi Baikerikar ",lecture:"3 Lectures per week" ),
    SubjectFaculty(sub:"BI",teacher:"Prof. Aruna Khubalkar", lecture:"4 Lectures per week"),
    SubjectFaculty(sub:"Web",teacher:"Prof. Vaishali Kavathekar",lecture:"4 Lectures per week"),
    SubjectFaculty(sub:"Mini-Project",teacher:"Prof. Sunantha Krishnan",lecture:"2 Lectures per week"),
  ];

  Widget subjectTemplate(sub){
    return Card(

        margin: EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
              Text(sub.subject),
              SizedBox(height: 10.0,),
              Text(sub.faculty),
              SizedBox(height: 10.0,),
              Text(sub.lectures),
            ],
          ),
        )

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text ("Subjects"),
        centerTitle: true,
      ),
      body: Column(
        children: subjects.map((sub) => subjectTemplate(sub)).toList(),
      ),

    );
  }
}
