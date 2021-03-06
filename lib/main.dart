import 'package:appevolve_test/colors.dart';
import 'package:appevolve_test/screens/orders_screen.dart';
import 'package:appevolve_test/widgets/avatar.dart';
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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: 200,
          child: NavigationBar(),
        ),
        Expanded(
            child: SingleChildScrollView(
          child: OrdersScreen(),
        ))
      ],
    );

    final isDesktop = isDesktopDisplay(context);
    return Scaffold(
      backgroundColor: AEColors.lighterGray,
      appBar: (!isDesktop)
          ? AppBar(
              title: Text(
                "Orders",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Center(child: Avatar()),
                )
              ],
            )
          : null,
      body: (isDesktop)
          ? desktopBody
          : SingleChildScrollView(child: OrdersScreen()),
      drawer: (!isDesktop)
          ? Drawer(
              child: NavigationBar(),
            )
          : null,
    );
  }
}

class AppEvolveTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AppEvolve',
      theme: ThemeData(
          fontFamily: GoogleFonts.manrope().fontFamily,
          primaryColor: AEColors.superDarkBlue,
          accentColor: AEColors.turquoise),
      home: AppScaffold(),
    );
  }
}
