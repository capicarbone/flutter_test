import 'package:appevolve_test/a_e_icons_icons.dart';
import 'package:appevolve_test/colors.dart';
import 'package:appevolve_test/widgets/avatar.dart';
import 'package:flutter/material.dart';

import '../adaptive.dart';

class _Divider extends StatelessWidget {
  const _Divider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: COLOR_MEDIUM_GRAY.withOpacity(0.5),
      height: 1,
    );
  }
}

class _NavItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  const _NavItem({
    Key? key,
    required this.text,
    required this.icon,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      color: (selected) ? COLOR_RED.withOpacity(0.25) : Colors.transparent,
      height: 50,
      child: Stack(
        children: [
          if (selected)
            Container(
              width: 5,
              color: COLOR_RED,
            ),
          Center(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Icon(
                      icon,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 18.83,
                    ),
                    Text(text,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600))
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
        child: Container(
            width: 160,
            height: 31,
            child: Image(
              image: AssetImage('appevolve_logo.png'),
            )),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Avatar(),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Admin",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              Icon(
                AEIcons.settings,
                color: Colors.white,
                size: 18,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = isDesktopDisplay(context);
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _AppLogo(),
                _Divider(),
                SizedBox(
                  height: 8,
                ),
                _NavItem(text: "Dashboard", icon: AEIcons.dashboard),
                _NavItem(
                  text: "Orders",
                  selected: true,
                  icon: AEIcons.order,
                ),
                _NavItem(
                  text: "Products",
                  icon: AEIcons.product,
                ),
                _NavItem(text: "Clients", icon: AEIcons.client),
                _NavItem(text: "Stores", icon: AEIcons.store),
                _NavItem(text: "Promo Codes", icon: AEIcons.promo),
                _NavItem(text: "Reports", icon: AEIcons.report),
                _NavItem(text: "Support", icon: AEIcons.support),
              ],
            ),
          ),
          if (isDesktop)
            Column(
              children: [_Divider(), _NavFooter()],
            )
        ],
      ),
    );
  }
}
