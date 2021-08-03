
import 'package:flutter/material.dart';

class TableFilters extends StatelessWidget {
  const TableFilters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        children: [Text("Filters")],
      ),
    );
  }
}
