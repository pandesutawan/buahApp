import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  List<String> buah = ['alpukat', 'apel', 'manggis', 'jeruk', 'nanas'];
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Buah-buahan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            body: ListView.separated(
                itemBuilder: (context, index){
                  return Card(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            width: 100.0,
                            height: 100.0,
                            color: Colors.grey,
                            child: Image.asset('assets/images/'+buah[index]+'.png'),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(15.0),
                              height: 100.0,
                              color: Colors.grey[200],
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Center(
                                  child: Text(buah[index],
                                  ),
                                ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, position) {
                  return Container(
                    //color: Colors.greenAccent,
                    //child: Text('Ini contoh separator Builder', style: TextStyle(fontSize: 20)),
                  );
                },
                itemCount: buah.length)

        )
    );
  }
}
