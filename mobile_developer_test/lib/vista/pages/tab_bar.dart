// ignore_for_file: no_logic_in_create_state, sized_box_for_whitespace, camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:mobile_developer_test/utils/local/responsive.dart';
import 'package:mobile_developer_test/vista/pages/cam.dart';
import 'package:mobile_developer_test/vista/pages/title_list.dart';

//Clase para crear el menú en la parte inferior.

class Tab_Bar extends StatefulWidget {
  const Tab_Bar({Key? key}) : super(key: key);

  @override
  Tab_BarState createState() => (Tab_BarState());
}

class Tab_BarState extends State<Tab_Bar> {
  late Widget currentScreen = const TitleListPage();

  int currentTab = 0;
  final List<Widget> screen = [const TitleListPage(), const CamarePage()];

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottonAppTabBar(),
    );
  }

  bottonAppTabBar() {
    final Resposive respo = Resposive(context);
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: respo.dPorcentaje(1),
      child: SizedBox(
        height: respo.dPorcentaje(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const TitleListPage();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: currentTab == 0 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Titulos",
                        style: TextStyle(
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const CamarePage();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.camera_alt,
                        color: currentTab == 1 ? Colors.blue : Colors.grey,
                      ),
                      Text(
                        "Cámara",
                        style: TextStyle(
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
