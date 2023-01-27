import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  final String data;

  FourthPage({required this.data});

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
              child: Text(
                'Fourth Page',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Text(data, style: TextStyle(fontSize: 20)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    //using pushReplacementNamed used to wherever we need to go
                    Navigator.of(context).pushReplacementNamed("/");
                  },
                  child: Text('Back to Home screen')),
            )
          ],
        ),
      ),
    );
  }
}
