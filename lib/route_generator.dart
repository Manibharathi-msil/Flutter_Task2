import 'package:flutter/material.dart';
import 'package:flutter_routes/second_page.dart';
import 'package:flutter_routes/third_page.dart';

import 'fourth_page.dart';
import 'main.dart';

class RouteGenerator {
  //Settings is the object received in the onGenerateRoute
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyHomePage());

      case '/second':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondPage(data: args),
          );
        }
        return _errorRoute();
        case '/third':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => ThirdPage(data: args),
          );
        }
        // if args is not a correct type, return a error page
        return _errorRoute();

        case '/fourth':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => FourthPage(data: args),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
