import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Split Widget'),
      ),
      body: Column(
        children: [
           const CatItems(),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: ListView.builder(
                  itemBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.red,
                          ),
                          title: Text('Name'),
                          subtitle: Text('Mob No'),
                          trailing: Icon(Icons.delete),
                        ),
                      )),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}

class CatItems extends StatelessWidget {
  const CatItems({super.key});

  // const CatItems({super.key});

  @override
  Widget build(BuildContext context) {
    //throw UnimplementedError();
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.green,
        child: ListView.builder(
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.all(20.0),
            child: SizedBox(
              width: 100,
              child: CircleAvatar(
                backgroundColor: Colors.yellow,
              ),
            ),
          ),
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
