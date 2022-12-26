import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  List<Icon> icons=[];
  List<String> questions=[
    'India capital is jaipur ?',
    'India has 29 state\'s ?',
    'India is Satate ?'
  ];
  List<bool> answers=[false,true,false];
  int questionInd=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          questions[questionInd],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25
                          ),
                        ),
                      ),
                    )),
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(answers[questionInd]==true){
                              icons.add(
                                  Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  )
                              );
                              questionInd=(questionInd+1)%3;
                            }
                            else{
                              icons.add(
                                  Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  )
                              );
                              questionInd=(questionInd+1)%3;
                            }
                          });

                        },
                        child: Container(
                          width: double.infinity,
                          color: Colors.green,
                          child: Center(
                            child: Text(
                              'True',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )),
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(answers[questionInd]==false){
                              icons.add(
                                  Icon(
                                    Icons.check,
                                    color: Colors.green,
                                  )
                              );
                              questionInd=(questionInd+1)%3;
                            }
                            else{
                              icons.add(
                                  Icon(
                                    Icons.close,
                                    color: Colors.red,
                                  )
                              );
                              questionInd=(questionInd+1)%3;
                            }
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          color: Colors.red,
                          child: Center(
                            child: Text(
                              'False',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )),
                Row(
                  children: icons,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
