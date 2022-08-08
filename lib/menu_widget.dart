import 'package:flutter/material.dart';

class MenuWidgetCatalog extends StatelessWidget {
  const MenuWidgetCatalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            tileColor: Colors.pink.shade50,
            title: const Text('Каталог'),
            onTap: () {},
            leading: Icon(Icons.menu_open),
          ),
          ListTile(
            title: const Text('Специальные предложения', style: TextStyle(color: Colors.red)),
            onTap: () {},
            leading: Icon(Icons.percent_outlined),
          ),
          ListTile(
            title: const Text('Подарочные сертификаты'),
            onTap: () {},
            leading: Icon(Icons.card_giftcard),
          ),
          ListTile(
            title: const Text('Покупки'),
            onTap: () {},
            leading: Icon(Icons.shopping_bag),
          ),
          ListTile(
            title: const Text('Something yet'),
            onTap: () {},
            leading: Icon(Icons.no_cell),
          ),
          ListTile(
            title: const Text('+380994434391'),
            onTap: () {},
            leading: Icon(Icons.phone),
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.messenger)),
                IconButton(onPressed: () {}, icon: Icon(Icons.people)),
                IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
              ],
            ),
        ],
      ),
    );
  }
}
