import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/timerInfo.dart';


class homePage extends StatefulWidget {
  static String id = 'homePage';
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {


  int initialValue = 60;

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {

      var timer_info = Provider.of<timerInfo>(context,listen: false);

      timer_info.updateRemainingTime();

//      setState(() {
//        initialValue--;
//
//      });


    }
    );

  }


  @override
  Widget build(BuildContext context) {
    print("Started from scratch");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Consumer<timerInfo>
              (
              builder: (context,data,child)
                {
                return
                Text(data.getRemainingTime()?.toString() ?? '' , style: TextStyle(fontSize: 30.0));


                },
            ),

          ],
        ),
      ),
    );
  }


}
