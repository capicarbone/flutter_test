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
              SizedBox(width: 8,),
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

class TableFilters extends StatelessWidget {
  const TableFilters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 19),
              decoration: whiteBoxDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: const TextField(
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 18),
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
          ),
          _TableSelect(title: "Date Range"),
          _TableSelect(
            title: "Order Status",
          ),
          _TableSelect(
            title: "Distribution City",
          ),
          _TableSelect(
            title: "More Filters",
          )
        ],
      ),
    );
  }
}
