import 'package:animated_transition_flutter/transition_Widgets/BouncingPageRoute.dart';
import 'package:animated_transition_flutter/SecondScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("First Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("Press to navigate to Second Screen"),
              RaisedButton(
                  child: Text("Material Page Route"),
                  onPressed: () {
                    _pageNavigator("MaterialPageRoute");
                  }),
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                  child: Text("Page Route Builder"),
                  onPressed: () {
                    _pageNavigator("PageRouteBuilder");
                  }),
            ]),
      ),
    );
  }

  _pageNavigator(String routeType) {
    if (routeType == "MaterialPageRoute") {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return SecondScreen();
      }));
    } else if (routeType == "PageRouteBuilder") {
      Navigator.push(
        context, 
        BouncingPageRoute(routeName: SecondScreen()));
     
    }
  }
}
