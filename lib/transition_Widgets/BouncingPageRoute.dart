

import 'package:flutter/cupertino.dart';

class BouncingPageRoute extends PageRouteBuilder{
Widget routeName;
  BouncingPageRoute({this.routeName}):super(
    transitionDuration: Duration(seconds:  2),
      transitionsBuilder:  (BuildContext context, Animation<double> animation,
              Animation<double> secanimation,Widget child){
                //adding curve or transition logic
                animation=CurvedAnimation(
                  parent: animation,
                  curve: Curves.elasticInOut,
                  );
                return ScaleTransition(
                  scale: animation,
                  child: child,
                  alignment: Alignment.bottomCenter,
                  );
              },
        pageBuilder:
          (BuildContext context, Animation<double> animation,
              Animation<double> secanimation) {
        return routeName;
      });
  
}