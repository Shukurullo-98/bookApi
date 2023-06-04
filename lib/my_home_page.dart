import 'package:book_api/models/book_api/top_objects.dart';
import 'package:book_api/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

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
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: ListView.builder(
                  itemCount: data.results.books.length,
                  itemBuilder: (BuildContext context, index) {
                    var item = data.results.books[index];
                    Uri url = Uri.parse(item.buyLinks[0].url);
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
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item.price,
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    _showMyDialog(context, url);
                                  },
                                  child: Text("Buy"))
                            ],
                          ),
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

Future<void> _showMyDialog(context, Uri url) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Buy '),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Container(
                child: Linkify(text: 'Amazon',
                  onOpen: (link)=> print(url),

                ),
              ),
              Text('Would you like to approve of this message?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Approve'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

