import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import './menus_dataStart.dart';
// import 'notifications.dart';

class MenusCategory extends StatelessWidget {
  final dynamic menusID;
  final String menusTitle;
  const MenusCategory(this.menusID, this.menusTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    final menusData = dataStartContent.where((element)
      => element.types.contains(menusID)
    ).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(menusTitle),
      ),

      body: ListView.builder(
        itemBuilder: (cnt, index) {
          return Container(
            width: double.infinity,
            alignment: Alignment.topCenter,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/ramadan.png',
                ),
              ),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(top: 40,bottom: 400,),
              child: Column(
                verticalDirection: VerticalDirection.down,mainAxisSize: MainAxisSize.max,
                children: [

                  Text(
                    menusData[index].title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        height: 1.5,),
                    textAlign: TextAlign.center,
                  ),

                  Container(
                    padding: const EdgeInsets.only(bottom: 40,),
                    child: Column(
                      children: [
                          GFAccordion(
                              contentBorderRadius: BorderRadius.circular(20),
                              contentBackgroundColor: Colors.amber[55],
                              margin: const EdgeInsets.all(8),
                              contentPadding: const EdgeInsets.all(20),
                              title: menusData[index].steps[0],titleBorderRadius: BorderRadius.circular(10),
                              contentChild: Text(
                                  menusData[index].steps[1],
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'OpenSans',
                                    letterSpacing: 2,
                                  ),
                                  textAlign: TextAlign.center),
                              textStyle: const TextStyle(
                                  fontSize: 18,
                                  height: 1.5,
                                  fontFamily: 'QuickSand',
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),collapsedTitleBackgroundColor: Colors.amberAccent,
                              collapsedIcon: const Icon(Icons.arrow_drop_down),
                              expandedIcon: const Icon(Icons.arrow_drop_up)),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 40,),
                    child: GFAccordion(
                        contentBorderRadius: BorderRadius.circular(20),
                        contentBackgroundColor: Colors.amber[55],
                        margin: const EdgeInsets.all(8),
                        contentPadding: const EdgeInsets.all(20),
                        title: menusData[index].steps[2],titleBorderRadius: BorderRadius.circular(10),
                        contentChild: Text(menusData[index].steps[3],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                              letterSpacing: 2,
                            ),
                            textAlign: TextAlign.center),
                        textStyle: const TextStyle(
                            fontSize: 18,
                            height: 1.5,
                            fontFamily: 'QuickSand',
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),collapsedTitleBackgroundColor: Colors.amberAccent,
                        collapsedIcon: const Icon(Icons.arrow_drop_down),
                        expandedIcon: const Icon(Icons.arrow_drop_up)),
                  ),

                  Container(
                    padding: const EdgeInsets.only(bottom: 40,),
                    child: GFAccordion(contentBorderRadius: BorderRadius.circular(20),
                        contentBackgroundColor: Colors.amber[55],
                        margin: const EdgeInsets.all(8),
                        contentPadding: const EdgeInsets.all(20),
                        title: menusData[index].steps[4],titleBorderRadius: BorderRadius.circular(10),
                        contentChild: Text(menusData[index].steps[5],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                              letterSpacing: 2,
                            ),
                            textAlign: TextAlign.center),
                        textStyle: const TextStyle(
                            fontSize: 18,
                            height: 1.5,
                            fontFamily: 'QuickSand',
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),collapsedTitleBackgroundColor: Colors.amberAccent,
                        collapsedIcon: const Icon(Icons.arrow_drop_down),
                        expandedIcon: const Icon(Icons.arrow_drop_up)),
                  ),

                  Container(
                    padding: const EdgeInsets.only(bottom: 40,),
                    child: GFAccordion(contentBorderRadius: BorderRadius.circular(20),
                        contentBackgroundColor: Colors.amber[55],
                        margin: const EdgeInsets.all(8),
                        contentPadding: const EdgeInsets.all(20),
                        title: menusData[index].steps[6],titleBorderRadius: BorderRadius.circular(10),
                        contentChild: Text(menusData[index].steps[7],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                              letterSpacing: 2,
                            ),
                            textAlign: TextAlign.center),
                        textStyle: const TextStyle(
                            fontSize: 18,
                            height: 1.5,
                            fontFamily: 'QuickSand',
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),collapsedTitleBackgroundColor: Colors.amberAccent,
                        collapsedIcon: const Icon(Icons.arrow_drop_down),
                        expandedIcon: const Icon(Icons.arrow_drop_up)),
                  ),

                  Container(
                    padding: const EdgeInsets.only(bottom: 40,),
                    child: GFAccordion(contentBorderRadius: BorderRadius.circular(20),
                        contentBackgroundColor: Colors.amber[55],
                        margin: const EdgeInsets.all(8),
                        contentPadding: const EdgeInsets.all(20),
                        title: menusData[index].steps[8],titleBorderRadius: BorderRadius.circular(10),
                        contentChild: Text(menusData[index].steps[9],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSans',
                              letterSpacing: 2,
                            ),
                            textAlign: TextAlign.center),
                        textStyle: const TextStyle(
                            fontSize: 18,
                            height: 1.5,
                            fontFamily: 'QuickSand',
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,),collapsedTitleBackgroundColor: Colors.amberAccent,
                        collapsedIcon: const Icon(Icons.arrow_drop_down),
                        expandedIcon: const Icon(Icons.arrow_drop_up)),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: menusData.length,
      ),

      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: const [
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.green,
      //         ),
      //         child: Text(
      //           'Navigation',
      //           style: TextStyle(fontSize: 20),
      //         ),
      //       ),
      //
      //       // ListTile(
      //       //   leading: const Icon(Icons.add_alert_rounded),
      //       //   title: const Text(' Notifications '),
      //       //   onTap: () {
      //       //     Navigator.push( // Use push to navigate to a new screen
      //       //       context,
      //       //       MaterialPageRoute(
      //       //         builder: (context) => const FastdayReminder(), // Navigate to FastdayReminderReminderApp
      //       //       ),
      //       //     );
      //       //   },
      //       // ),
      //     ],
      //   ),
      // ),
    );
  }
}









// );
//   }
// }
