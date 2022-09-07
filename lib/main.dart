import 'package:flutter/material.dart';

void main() {
  runApp(ContainerApp());
}

class ContainerApp extends StatelessWidget {
  const ContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container App'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(100.0),
              height: 300.0,
              width: 300.0,
              
              decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.rectangle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.purple.shade50,Colors.purple.shade500]
                  ),
                  image: DecorationImage(
                    image: NetworkImage('https://openclipart.org/image/800px/296924')
                  ),
                //borderRadius: BorderRadius.all(Radius.circular(50.0)),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0,),bottomRight: Radius.circular(25.0))
              ),
            ),
          ],
        ),
      ),
    );
  }
}
