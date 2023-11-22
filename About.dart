import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(
    home: About(),
    debugShowCheckedModeBanner: false,
  ));
}

//stless
class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/Assets/images/BG.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 30.0, left: 30),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(radius: 40, backgroundImage: AssetImage("lib/Assets/images/MY PHOTO.jpg"),),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Wahid Sabbir", style: TextStyle(fontSize: 25, color: Colors.black , fontFamily: "Roboto"),),
                      Text("Android Developer", style: TextStyle(fontSize: 14,color: Colors.black,fontFamily: "Robotor"),)
                    ],
                  )
                ],
              ),
              SizedBox(height: 40,),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.school, size: 30,color: Colors.black,),
                        SizedBox(width: 15,),
                        Text("B.sc in CSE", style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.note_add_rounded, size: 30,color: Colors.black,),
                        SizedBox(width: 15,),
                        Text("Android Portfolio App", style: TextStyle(fontSize: 18,color:Colors.black,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_pin, size: 30,color: Colors.black,),
                        SizedBox(width: 15,),
                        Text("Dhaka, Savar", style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.email, size: 30,color: Colors.black,),
                        SizedBox(width: 15,),
                        Text("w.sabbir.p@gmail.com", style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: "Robotor"),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: <Widget>[
                        Icon(Icons.phone, size: 30,color: Colors.black,),
                        SizedBox(width: 15,),
                        Text("+8801850043507", style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: "Robotor"),),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text("I'm Wahid Sabbir, a dedicated learner with a strong academic background. I graduated from Genius Laboratory School & College in 2017 and Cantonment College Jashore in 2019 with a GPA of 5. Currently pursuing a B.Sc. in Computer Science and Engineering at Daffodil International University, I'm passionate about exploring technology's creative potential.", style: TextStyle(fontSize: 14,color: Colors.black,fontFamily: "Robotor"),),
              ),
              SizedBox(height: 60,),
              Text("Created By w.SABBIR.p", style: TextStyle(fontSize: 13,color: Colors.black,fontFamily: "Robotor"),),
            ],
          ),
        ),
      ),
    );
  }
}
