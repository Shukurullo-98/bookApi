import 'package:book_api/models/book_api/top_objects.dart';
import 'package:book_api/repository/repository.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Api"),
        centerTitle: true,
      ),
      body: FutureBuilder<TopObjects>(
        future: Repository.getMyTopObjects(),
        builder: (BuildContext context, AsyncSnapshot<TopObjects> snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data!;
            return Container(
              child: Text(data.lastModified),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
