import 'package:flutter/material.dart';

class TitleInformation extends StatelessWidget {
  const TitleInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map post = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: const Text("información titulos"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              post['title'].toString().toUpperCase(),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              post['body'],
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
