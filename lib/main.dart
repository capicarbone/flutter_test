import 'package:appevolve_test/screens/orders_screen.dart';
import 'package:flutter/material.dart';
import 'adaptive.dart';
import 'widgets/navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(AppEvolveTest());
}

class AppScaffold extends StatelessWidget {
  const AppScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final desktopBody = Row(
      children: [
        Container(
          width: 200,
          child: NavigationBar(),
        ),
        Expanded(child: OrdersScreen())
      ],
    );

    final isDesktop = isDesktopDisplay(context);
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(240, 240, 240, 1),
        appBar: (!isDesktop)
            ? AppBar(
                title: Text(
                  "Orders",
                  textAlign: TextAlign.center,
                ),
                centerTitle: true,
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Center(
                        child: Container(
                      width: 24,
                      height: 24,
                      color: Colors.red,
                    )),
                  )
                ],
              )
            : null,
        body: (isDesktop) ? desktopBody : OrdersScreen(),
        drawer: (!isDesktop)
            ? Drawer(
                child: NavigationBar(),
              )
            : null,
      ),
    );
  }
}

class AppEvolveTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppEvolve',
      theme: ThemeData(
          fontFamily: GoogleFonts.manrope().fontFamily,
          primaryColor: Color.fromRGBO(44, 45, 53, 1),
          accentColor: Color.fromRGBO(85, 163, 174, 1)),
      home: AppScaffold(),
    );
  }
}
