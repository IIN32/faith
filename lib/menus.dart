import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import './menus_dataStart.dart';
import './menus_content.dart';

class MenusScreens extends StatelessWidget {
  const MenusScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'faith',
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        alignment: Alignment.topCenter,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/images/back.png',
            ),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              // height: MediaQuery.sizeOf(context).height * 0.7,
              height: 580,
              // child: Flexible(
                child: GridView(
                  padding: const EdgeInsets.all(20),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 100,
                  ),
                  children: menus_dataStart
                      .map((dataStart) => MenusTypes(
                            dataStart.id,
                            dataStart.title,
                            dataStart.color,
                          ))
                      .toList(),
                ),
              // ),
            ),
          ],
        ),
      ),
        // BirthdayReminderApp()
    );
    // FastdayReminderReminderApp();
  }
}
