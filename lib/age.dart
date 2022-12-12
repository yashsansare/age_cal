import 'package:flutter/material.dart';

class ageCalc extends StatefulWidget {
  const ageCalc({Key? key}) : super(key: key);

  @override
  State<ageCalc> createState() => _ageCalcState();
}

class _ageCalcState extends State<ageCalc> {
  TextEditingController txtByear = TextEditingController();
  TextEditingController txtCyear = TextEditingController();
  String? bYear;
  String? cYear;
  int? age;
  String? livedata1;
  String? livedata2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(child: Text("Age Calculator",style: TextStyle(color: Colors.black,letterSpacing: 3,fontWeight: FontWeight.bold,fontSize: 30),),),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("BirthYear $livedata1",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value){
                  setState(() {
                    livedata1= value;
                  });
                },
                controller: txtByear,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("BirthYear"),
                  suffixIcon: Icon(Icons.cake),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("CurrentYear $livedata2",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value){
                  setState(() {
                    livedata2 = value;
                  });
                },
                controller: txtCyear,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("CurrentYear"),
                  suffixIcon: Icon(Icons.calendar_month),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(child: ElevatedButton(onPressed: (){
                bYear = txtByear.text;
                cYear = txtCyear.text;

                setState(() {
                  age = int.parse(cYear!) - int.parse(bYear!);
                });
              },child:Text("count",style: TextStyle(fontSize: 18),),),),
              SizedBox(
                height: 10,
              ),
              Center(child: Text("Your Age is : $age",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))
            ],
          ),
        ),
      ),
    );
  }
}