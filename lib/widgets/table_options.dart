import 'package:appevolve_test/adaptive.dart';
import 'package:appevolve_test/widgets/custom_button.dart';
import 'package:appevolve_test/widgets/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class _TableSelect extends StatelessWidget {
  final String title;
  const _TableSelect({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8),
      width: 186,
      height: double.infinity,
      decoration: whiteBoxDecoration,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(Icons.dashboard_sharp),
              SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 12, color: Color.fromRGBO(140, 138, 152, 1)),
              )
            ],
          ),
          Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}

const _filters = [
  {'title': 'Date Range'},
  {'title': 'Date Range'},
  {'title': 'Date Range'},
  {'title': 'Date Range'}
];

class TableOptions extends StatelessWidget {
  const TableOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = (isDesktopDisplay(context));
    return Column(
      children: [
        Container(
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Container(
                height: 40,
                width: isDesktop ? 404 : double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 19),
                decoration: whiteBoxDecoration,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: const TextField(
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 14),
                            hintStyle: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(140, 138, 152, 1)),
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: "Search by any order parameter"),
                      ),
                    ),
                  ],
                ),
              ),
              if (isDesktop)
                ..._filters
                    .map((e) => Container(
                        //margin: EdgeInsets.only(left: 8),
                        width: 186,
                        child: CustomButton(
                          text: e['title']!,
                          isDropdown: true,
                        )))
                    .toList()
            ],
          ),
        ),
        if (!isDesktop)
          SizedBox(
            height: 16,
          ),
        if (!isDesktop)
          Row(
            children: [
              Expanded(child: CustomButton(text: 'Filters')),
              SizedBox(
                width: 16,
              ),
              Expanded(child: CustomButton(text: 'Sort')),
            ],
          )
      ],
    );
  }
}
