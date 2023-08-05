import 'package:flutter/material.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    var arr = ['a','b','c','d','e','F','a','b','c','d','e','F'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Exp'),
      ),
      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   reverse: true,
      //   children: const [
      //     Padding(
      //         padding: EdgeInsets.all(8.0),
      //         child: Text('One', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),)),
      //
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text('Two', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text('three', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Text('four', style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
      //     )
      //   ],
      // )
     // body: //ListView.builder(itemBuilder: (context, index) {
      body: ListView.separated(itemBuilder: (context, index) {
        //return Text(arr[index], style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),);
        return ListTile(
         leading: Text('${index+1}'),
           //leading: Image.asset('assets/images/tired'),
          title: Text(arr[index]),
          subtitle: const Text('Number'),
          trailing: const Icon(Icons.add),
        );
      },
        itemCount: arr.length,
       // itemExtent: 50,
       //  scrollDirection: Axis.horizontal,
        separatorBuilder: (context,index){
        return const Divider(height: 50, thickness: 2 ,);
        },
      ),
    );
  }
}
