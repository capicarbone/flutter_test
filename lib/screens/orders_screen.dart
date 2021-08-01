import 'package:appevolve_test/widgets/data_table.dart';
import 'package:appevolve_test/widgets/helpers.dart';
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
              Row(
                children: [Text("Filters")],
              ),
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
              child: Row(
                children: [Text("Status filters")],
              ),
            ),
            SizedBox(
              height: 21,
            ),
            CustomDataTable(),
          ],
        ))
      ],
    );
  }
}
