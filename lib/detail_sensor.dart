import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class DetailSensor extends StatefulWidget {
  @override
  _DetailSensorState createState() => _DetailSensorState();
}

class _DetailSensorState extends State<DetailSensor> {

  var data = [0.0,1.0,1.5,2.0,0.0,0.0,0.5,-0.5,-2.0];
  List<String> litems = ["Subjek 1","Subjek 2","Subjek 3","Subjek 4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 8.0, right: 8.0, top: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Subjek 1',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold
                    ),
                  ),Icon(
                    Icons.add_to_photos
                  )
                ],
              ),
              SizedBox(
                height: 34.0,
              ),
              Row(
                children: <Widget>[
                  FlatButton(
                    color: Colors.deepPurple,
                    onPressed: () {},
                    child: Text(
                      'Percobaan 1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),FlatButton(
                    color: Colors.deepPurple,
                    onPressed: () {},
                    child: Text(
                      'Percobaan 2',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),FlatButton(
                    color: Colors.deepPurple,
                    onPressed: () {},
                    child: Text(
                      'Percobaan 3',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0)
                ),
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: Column(
                  children: <Widget>[
                    Sparkline(
                      data: data,
                      fillMode: FillMode.below,
                      fillGradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.amber[800], Colors.amber[200]]
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),Text(
                        'Grafik Percobaan'
                    )
                  ],
                )
              ),
              SizedBox(
                height: 24.0,
              ),
              FlatButton(
                onPressed: (){},
                color: Colors.deepPurple,
                child: Text(
                  'Start',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white
                  ),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Text(
                'Hasil Data',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                  itemCount: litems.length,
                  itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Kelebaran : 0.02',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.deepPurple,
                        ),
                      ),SizedBox(
                        width: 8.0,
                      ),Text(
                        'Kecepatan : 0.025',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.deepPurple,
                        ),
                      ),SizedBox(
                        width: 8.0,
                      ),Text(
                        'apalagi : 0.02',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.deepPurple,
                        ),
                      )
                    ],
                  ),
                );
              }),SizedBox(
                height: 24.0,
              ),FlatButton(
                onPressed: (){},
                color: Colors.deepPurple,
                child: Text(
                  'Selesai',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
