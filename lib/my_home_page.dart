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
            print(data);
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: ListView.builder(
                  itemCount: data.results.books.length,
                  itemBuilder: (BuildContext context, index) {
                    var item = data.results.books[index];
                    return Container(
                      margin: const EdgeInsets.all(15),
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 10,
                              spreadRadius: 10,
                              offset: const Offset(1, 3))
                        ],
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          item.bookImage != ''
                              ? Image(
                                  image: NetworkImage(
                                  item.bookImage,
                                  scale: 1.0,
                                ))
                              : Image(
                                  image: NetworkImage(
                                  data.results.books[2].bookImage,
                                  scale: 1.0,
                                )),
                        ],
                      ),
                    );
                  }),
            );
          } else {
            print(snapshot.error);
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
