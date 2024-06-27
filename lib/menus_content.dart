import 'package:flutter/material.dart';

import './menus_category.dart';

class MenusTypes extends StatelessWidget {
  final dynamic id;
  final String title;
  final Color color;
  const MenusTypes(this.id,this.title, this.color, {super.key});

  void menusSelected(BuildContext text){
    Navigator.of(text).push(MaterialPageRoute(builder: (_){
      return MenusCategory(id,title);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => menusSelected(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.8),
                  color,
                ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(title, style: Theme.of(context).textTheme.titleMedium,textAlign: TextAlign.center,),
      ),
    );
  }
}
