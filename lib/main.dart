import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class _Divider extends StatelessWidget {
  const _Divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(140, 138, 152, 1),
      height: 1,
    );
  }
}

class _NavItem extends StatelessWidget {
  final String text;
  final bool selected;
  const _NavItem({Key? key, required this.text, this.selected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          (selected) ? Color.fromRGBO(255, 82, 70, 0.25) : Colors.transparent,
      height: 50,
      child: Stack(
        children: [
          if (selected)
            Container(
              width: 5,
              color: Color.fromRGBO(255, 82, 70, 1),
            ),
          Center(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_balance,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 18.83,
                    ),
                    Text(text, style: TextStyle(color: Colors.white, fontSize: 16))
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class _AppLogo extends StatelessWidget {
  const _AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32, bottom: 32),
      child: Center(
        child: Text(
          "AppEvolve",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _NavFooter extends StatelessWidget {
  const _NavFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 108,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(children: [
            Text("Admin", style: TextStyle(color: Colors.white),)
          ],),
        ),
      ),
    );
  }
}


class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _AppLogo(),
                _Divider(),
                SizedBox(height: 13,),
                _NavItem(text: "Dashboard"),
                _NavItem(
                  text: "Orders",
                  selected: true,
                ),
                _NavItem(text: "Products"),
                _NavItem(text: "Clients"),
                _NavItem(text: "Stores"),
                _NavItem(text: "Promo Codes"),
                _NavItem(text: "Reports"),
                _NavItem(text: "Support"),
              ],
            ),
          ),
          _Divider(),
          _NavFooter()
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppEvolve',
      theme: ThemeData(
          primaryColor: Color.fromRGBO(44, 45, 53, 1),
          accentColor: Color.fromRGBO(85, 163, 174, 1)),
      home: Container(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(240, 240, 240, 1),
          //appBar: AppBar(),
          body: Row(children: [
            Container(width: 200,
            child: NavigationBar()
              ,)
          ],)
        ),
      ),
    );
  }
}
