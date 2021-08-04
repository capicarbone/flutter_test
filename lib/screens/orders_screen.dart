import 'package:appevolve_test/adaptive.dart';
import 'package:appevolve_test/models/filter.dart';
import 'package:appevolve_test/widgets/orders_table.dart';
import 'package:appevolve_test/widgets/helpers.dart';
import 'package:appevolve_test/widgets/section_header.dart';
import 'package:appevolve_test/widgets/table_options.dart';
import 'package:appevolve_test/widgets/table_quick_filters.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = isDesktopDisplay(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        BodyPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isDesktop)
                SizedBox(
                  height: 15,
                ),
              if (isDesktop)
                SectionHeader(
                  title: "Orders",
                ),
              if (isDesktop)
                SizedBox(
                  height: 16,
                ),
              TableOptions(),
            ],
          ),
        ),
        SectionDivider(),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: isDesktop ? 30 : 16,),
              TableQuickFilters(
                filters: [
                  Filter(name: "All Orders", qty: 294, selected: true),
                  Filter(name: "Preparing", qty: 12),
                  Filter(name: "Sent", qty: 77),
                  Filter(name: "Returned", qty: 14),
                  Filter(name: "Cancelled", qty: 16),
                  Filter(name: "Delivered", qty: 134)
                ],
              ),
            ],
          ),
        ),
        BodyPadding(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 1,
            ),
            OrdersTable(),
          ],
        ))
      ],
    );
  }
}
