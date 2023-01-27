import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  final String data;
   SecondPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Second Page',style: TextStyle(fontSize: 30),),
            ),
            Text(data,style: TextStyle(fontSize: 20),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/third',arguments: 'Welcome to third page');
                    //using push() also we can navigate another screen
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) =>
                    //         SecondPage(data: 'Hello there from first page'),
                    //   ),
                    // );
                  },
                  child: Text('Third Page')),
            )
          ],
        ),
      ),
    );
  }
}
