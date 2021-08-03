import 'package:appevolve_test/models/filter.dart';
import 'package:appevolve_test/widgets/data_table.dart';
import 'package:appevolve_test/widgets/helpers.dart';
import 'package:appevolve_test/widgets/table_filters.dart';
import 'package:appevolve_test/widgets/table_quick_filters.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BodyPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              H3(text: "Orders"),
              SizedBox(
                height: 16,
              ),
              TableFilters(),
            ],
          ),
        ),
        SectionDivider(),
        BodyPadding(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: TableQuickFilters(filters: [
                Filter(name: "All Orders", qty: 294, selected: true),
                Filter(name: "Preparing", qty: 12),
                Filter(name: "Sent", qty: 77),
                Filter(name: "Returned", qty: 14),
                Filter(name: "Cancelled", qty: 16),
                Filter(name: "Delivered", qty: 134)
              ],),
            ),
            SizedBox(
              height: 21,
            ),
            OrdersTable(),
          ],
        ))
      ],
    );
  }
}
