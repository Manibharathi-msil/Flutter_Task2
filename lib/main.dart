import 'package:flutter/material.dart';
import 'package:flutter_routes/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
     //Unknown routes will execute whenever the naviqation get failed
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(
          settings: settings,
          builder: (BuildContext context) =>
              Scaffold(body: Center(child: Text('Not Found'))),
        );
      },

    //This is one way to navigate the screen
    //Underscore is normally an indication that you are not going to use that parameter inside the block
      // home: const MyHomePage(),
      // routes: {
      //   '/second':(_) =>SecondPage(data: 'Hello')
      // },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Types of Routes'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'First Page',
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/second',arguments: 'Welcome to second page');

            //using push() also we can navigate another screen
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //         SecondPage(data: 'Hello there from first page'),
                  //   ),
                  // );
                },
                child: Text('Second Page'))
          ],
        ),
      ),
    );
  }
}
