import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Example(),
    );
  }
}

class Example extends StatefulWidget {
  Example({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                backgroundColor: Colors.red,
                unselectedBackgroundColor: Colors.grey[300],
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelStyle:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    icon: Icon(Icons.directions_car),
                    text: "car",
                  ),
                  Tab(
                    icon: Icon(Icons.directions_transit),
                    text: "transit",
                  ),
                  Tab(icon: Icon(Icons.directions_bike),text: "bike",),

                ],
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Center(
                      child: Container(
                        child: Column(

                          children: [


                            SizedBox(height: 10,),
                            Image.network('https://cdn.pixabay.com/photo/2016/02/22/20/22/bmw-1216469_960_720.jpg',fit: BoxFit.cover,), SizedBox(height: 10,),
                            Text('BMW',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.blue),),
                            Text('A car is a wheeled motor vehicle used for transportation. Most definitions of cars say that they run primarily on roads, '
                                'seat one to eight people, have four wheels, '
                                'and mainly transport people rather than goods. Cars came into global use during the 20th century, and developed economies depend on them.see....')
                          ],
                        ),
                      ),
                    ),

                    Center(
                      child: Container(
                        child: Column(

                          children: [


                            Image.network('https://cdn.pixabay.com/photo/2014/06/01/18/40/japan-359926_960_720.jpg',fit: BoxFit.cover,), SizedBox(height: 10,),
                            Text('Transit',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.blue),), SizedBox(height: 10,),
                            Text('Transit is a mobile app providing real-time public transit data. The app functions in over 175 metropolitan '
                                'areas around the world. Transit was designed for aggregating '
                                'and mapping real-time public transit data, crowdsourcing user data to determine the true location of buses and trains.see....',)
                          ],
                        ),
                      ),
                    ),


                    Center(
                      child: Container(

                        child: Column(

                          children: [


                            Image.network('https://cdn.pixabay.com/photo/2015/09/08/21/02/superbike-930715_960_720.jpg',fit: BoxFit.cover,), SizedBox(height: 10,),
                            Text('Bike',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.blue),), SizedBox(height: 10,),
                            Text('A bicycle, also called a pedal cycle, bike or cycle, is a human-powered or motor-powered assisted, '
                                'pedal-driven, single-track vehicle, having two wheels'
                                ' attached to a frame, one behind the other. A bicycle rider is called a cyclist, or bicyclist.see....',),

                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}