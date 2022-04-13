import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(
        title: Text('Ninja ID 2'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        onPressed: () {
          // print('hallow programming');
            setState(() {
              ninjaLevel += 1;
            });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            children: [
              SizedBox(height: 30.0,),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/ninja_img.jpg'),
                  radius: 50.0,
                ),
              ),
              Divider(
                height: 20.0,
                color: Colors.black87,
              ),
              SizedBox(
                height: 30.0,
              ),
              Text('Name',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('KHALID AHMAD',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
              ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Disignation',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'MOBILE APPLICATION DEVELOPER',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Email',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('khalid@gmail.com'),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Ninja Level',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '$ninjaLevel',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
            ],
        ),
      )
    );
  }
}





