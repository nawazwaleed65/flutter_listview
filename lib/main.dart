import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> arrnames = ["Waleed", "Wahaj", "Azam", "Hamza", "huzaifa"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListTile Example'),
        ),
        body: ListView.builder(
          itemCount: arrnames.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text('$index'),  // Display the index
              title: Text(arrnames[index]),  // Display the name
              subtitle: Text('Number: ${index + 1}'),  // Display a subtitle
              trailing: Icon(Icons.add),  // Display a trailing icon
            );
          },
        ),
      ),
    );
  }
}
