import 'package:flutter/material.dart';
import 'package:mobile_developer_test/utils/remote/internet_Connect.dart';
import 'package:mobile_developer_test/utils/remote/wp_api_posts.dart';
import 'package:mobile_developer_test/vista/routes/route.dart';

class TitleListPage extends StatefulWidget {
  const TitleListPage({Key? key}) : super(key: key);

  @override
  State<TitleListPage> createState() => _TitleListPageState();
}

class _TitleListPageState extends State<TitleListPage> {
  @override
  Widget build(BuildContext context) {
    final InternetConnect _internetConnect = InternetConnect();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            "LISTA DE TITULOS",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: FutureBuilder(
          future: apiRestPosts().Pageweb(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            _internetConnect.snackBarInternet();
            if (snapshot.hasData) {
              var posts = snapshot.data;

              return ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    Map postList = snapshot.data[index];

                    return GestureDetector(
                      onTap: () => Navigator.of(context).pushNamed(
                          RoutesPages.titleInfor,
                          arguments: postList),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          postList['title'].toString().toUpperCase(),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    );
                  });
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}

/*

Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("titulo"),
          TextButton(
            onPressed: () {
              Get.find<Authentication>().singOut();
              Navigator.pushReplacementNamed(context, RoutesPages.login);
            },
            child: const Text("Cerrar Sesión"),
          ),
        ],
      ),
*/