import 'package:flutter/material.dart';
class ThirdPage extends StatelessWidget {
  final String data;
  ThirdPage({required this.data});

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
              child: Text('Third Page',style: TextStyle(fontSize: 30),),
            ),
            Text(data,style: TextStyle(fontSize: 20)),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 40,
                width: 150,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/fourth',arguments: 'Welcome to fourth page');

                      //using push() also we can navigate another screen
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) =>
                      //         SecondPage(data: 'Hello there from first page'),
                      //   ),
                      // );
                    },
                    child: Text('Fourth Page')),
              ),
            ),
            SizedBox(
              height: 40,
              width: 150,
              child: ElevatedButton(onPressed: (){
                //using pop we can go to previous screen
                //at some places where you are uncertain about the screen popping use canPop()
                if(Navigator.of(context).canPop()){
                  Navigator.pop(context);
                }
              }, child: Text('Go Back')),
            )
          ],
        ),
      ),
    );
  }
}
