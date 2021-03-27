import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> entries = <String>['Restaurant', 'Bakery', 'Fast Food Corners','Subah Subah','Fruits', 'Veggies & Juices','Sweets and Namkeens','Ghar ka Khana','Exclusive With Doorbells'];
  // final List<int> colorCodes = <int>[600, 500, 100, 200, 300, 400, 500];
  final List<String> doorbell=<String>['https://static.toiimg.com/thumb/54407258.cms?imgsize=164312&width=800&height=800','https://static.toiimg.com/thumb/54407258.cms?imgsize=164312&width=800&height=800','https://static.toiimg.com/thumb/54407258.cms?imgsize=164312&width=800&height=800','https://static.toiimg.com/thumb/54407258.cms?imgsize=164312&width=800&height=800','https://static.toiimg.com/thumb/54407258.cms?imgsize=164312&width=800&height=800','https://static.toiimg.com/thumb/54407258.cms?imgsize=164312&width=800&height=800','https://static.toiimg.com/thumb/54407258.cms?imgsize=164312&width=800&height=800','https://static.toiimg.com/thumb/54407258.cms?imgsize=164312&width=800&height=800','https://static.toiimg.com/thumb/54407258.cms?imgsize=164312&width=800&height=800'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),

      body:  GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 3,
          ),

          itemCount: entries.length,

          itemBuilder: (BuildContext context, int index) {
            return Card(
              // color: Colors.amber[colorCodes[index]],

              color: Colors.amber,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: CircleAvatar(
                      radius: 30,
                      child:Image(
                        image: NetworkImage('${doorbell[index]}'),
                      ),
                    ),
                  ),
                  Center(child: Text('${entries[index]}')),
                ],
              ),
            );
          }
      )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
