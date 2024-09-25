import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ListView'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final titles = ['Bike', 'Boat', 'Bus'];
    final icons = [
      Icons.directions_bike,
      Icons.directions_boat,
      Icons.directions_bus
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        title: Text(widget.title),
      ),
      // body: ListView(
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //       color: Colors.red,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //       color: Colors.blue,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //       color: Colors.green,
      //     ),
      //   ],
      // ), // This trailing comma makes auto-formatting nicer for build methods.
      // body: GridView(
      //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 4,
      //   ),
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //       decoration: const BoxDecoration(
      //         // color: Colors.red,
      //         image: DecorationImage(
      //           image: AssetImage("minion.jpg"),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //       // color: Colors.blue,
      //       child: Image.network("https://picsum.photos/200"),
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //       color: Colors.black,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 250,
      //       margin: const EdgeInsets.only(bottom: 10),
      //       color: Colors.yellow,
      //     ),
      //   ],
      // ),
      // body: ListView(
      //   children: [
      //     ListTile(
      //       leading: CircleAvatar(
      //         backgroundImage: AssetImage("matahari.png"),
      //       ),
      //       title: Text("Sun"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.brightness_3),
      //       title: Text("Moon"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),
      //     ListTile(
      //       leading: Icon(Icons.star),
      //       title: Text("Starx"),
      //       trailing: Icon(Icons.keyboard_arrow_right),
      //     ),
      //   ],
      // ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, nomor) {
          return Card(
              child: ListTile(
            leading: CircleAvatar(
              // icons[nomor],
              backgroundImage:
                  NetworkImage("https://picsum.photos/200/300?=$nomor"),
            ),
            title: Text(titles[nomor]),
          ));
        },
      ),
    );
  }
}