import 'package:flutter/material.dart';

const Map<String, int> proportions = {
  'order_no': 1,
  'created': 1,
  'client': 3,
  'products': 2,
  'distribution': 1,
  'status': 2,
  'tracking': 1,
  'price': 1,
  'payment': 1
};

class _HeaderCell extends StatelessWidget {
  final String title;
  const _HeaderCell({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title.toUpperCase(),
          style: TextStyle(fontSize: 10),
        )
      ],
    );
  }
}

class _DataCell extends StatelessWidget {
  final String text;
  final String? subText;
  final bool highlighted;

  const _DataCell({Key? key, required this.text, this.subText, this.highlighted = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 12, fontWeight: (highlighted) ? FontWeight.w600: FontWeight.normal),
        ),
        if (subText != null) Text(subText!, style: TextStyle(fontSize: 12, color: Color.fromRGBO(140, 138, 152, 1)))
      ],
    );
  }
}

class _DataTableRow extends StatelessWidget {
  final String orderNo;
  final String created_date;
  final String created_time;
  final String client_name;
  final String client_email;
  final String products;
  final String distribution;
  final String status;
  final String tracking;
  final String courier;
  final String price;
  final String card_type;
  final String card_numbers;

  const _DataTableRow(
      {Key? key,
      required this.orderNo,
      required this.created_date,
      required this.created_time,
      required this.client_name,
      required this.client_email,
      required this.products,
      required this.distribution,
      required this.status,
      required this.tracking,
        required this.courier,
      required this.price,
      required this.card_type,
      required this.card_numbers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 8),
      margin: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(4))),
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (_) {}),
          Expanded(
            child: _DataCell(text: orderNo, highlighted: true,),
            flex: proportions['order_no']!,
          ),
          Expanded(
            child: _DataCell(
              text: created_date,
              subText: created_time,
            ),
            flex: proportions['created']!,
          ),
          Expanded(
            child: _DataCell(
              text: client_name,
              subText: client_email,
            ),
            flex: proportions['client']!,
          ),
          Expanded(
            child: _DataCell(
              text: products,
            ),
            flex: proportions['products']!,
          ),
          Expanded(
            child: _DataCell(
              text: distribution,
            ),
            flex: proportions['distribution']!,
          ),
          Expanded(
            child: _DataCell(
              text: status,
            ),
            flex: proportions['status']!,
          ),
          Expanded(
            child: _DataCell(
              text: tracking,
              subText: courier,
            ),
            flex: proportions['tracking']!,
          ),
          Expanded(
            child: _DataCell(
              text: price,
            ),
            flex: proportions['price']!,
          ),
          Expanded(
            child: _DataCell(
              text: card_type,
              subText: card_numbers,
            ),
            flex: proportions['payment']!,
          ),
          Expanded(
            child: Column(),
            flex: 1,
          )
        ],
      ),
    );
  }
}

class _DataTableHeader extends StatelessWidget {
  const _DataTableHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: Colors.white),
      height: 40,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(value: false, onChanged: (_) {}),
          Expanded(
              child: _HeaderCell(
                title: "order no.",
              ),
              flex: proportions['order_no']!),
          Expanded(
            child: _HeaderCell(
              title: 'created',
            ),
            flex: proportions['created']!,
          ),
          Expanded(
            child: _HeaderCell(
              title: 'client',
            ),
            flex: proportions['client']!,
          ),
          Expanded(
            child: _HeaderCell(
              title: 'products',
            ),
            flex: proportions['products']!,
          ),
          Expanded(
            child: _HeaderCell(
              title: 'distribution',
            ),
            flex: proportions['distribution']!,
          ),
          Expanded(
            child: _HeaderCell(
              title: 'status',
            ),
            flex: proportions['status']!,
          ),
          Expanded(
            child: _HeaderCell(
              title: 'tracking',
            ),
            flex: proportions['tracking']!,
          ),
          Expanded(
            child: _HeaderCell(
              title: 'price',
            ),
            flex: proportions['price']!,
          ),
          Expanded(
            child: _HeaderCell(
              title: 'payment',
            ),
            flex: proportions['payment']!,
          ),
          Expanded(
            child: Container(),
            flex: 1,
          )
        ],
      ),
    );
  }
}

class CustomDataTable extends StatelessWidget {
  const CustomDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _DataTableHeader(),
        _DataTableRow(
            orderNo: "#13702574",
            created_date: "04/10/2021",
            created_time: "02:39",
            client_name: "Matthew Collins",
            client_email: "c.matthews@outlook.com",
        products: "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
        distribution: "Colorado Springs",
        status: "Preparing",
          tracking: "705-610844",
          courier: "DHL",
          price: "\$2,198.03",
          card_type: "Credit Card",
          card_numbers: "**** 9171",

        ),
        _DataTableRow(
          orderNo: "#13702574",
          created_date: "04/10/2021",
          created_time: "02:39",
          client_name: "Matthew Collins",
          client_email: "c.matthews@outlook.com",
          products: "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
          distribution: "Colorado Springs",
          status: "Preparing",
          tracking: "705-610844",
          courier: "DHL",
          price: "\$2,198.03",
          card_type: "Credit Card",
          card_numbers: "**** 9171",

        ),
        _DataTableRow(
          orderNo: "#13702574",
          created_date: "04/10/2021",
          created_time: "02:39",
          client_name: "Matthew Collins",
          client_email: "c.matthews@outlook.com",
          products: "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
          distribution: "Colorado Springs",
          status: "Preparing",
          tracking: "705-610844",
          courier: "DHL",
          price: "\$2,198.03",
          card_type: "Credit Card",
          card_numbers: "**** 9171",

        ),
        _DataTableRow(
          orderNo: "#13702574",
          created_date: "04/10/2021",
          created_time: "02:39",
          client_name: "Matthew Collins",
          client_email: "c.matthews@outlook.com",
          products: "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
          distribution: "Colorado Springs",
          status: "Preparing",
          tracking: "705-610844",
          courier: "DHL",
          price: "\$2,198.03",
          card_type: "Credit Card",
          card_numbers: "**** 9171",

        ),
        _DataTableRow(
          orderNo: "#13702574",
          created_date: "04/10/2021",
          created_time: "02:39",
          client_name: "Matthew Collins",
          client_email: "c.matthews@outlook.com",
          products: "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
          distribution: "Colorado Springs",
          status: "Preparing",
          tracking: "705-610844",
          courier: "DHL",
          price: "\$2,198.03",
          card_type: "Credit Card",
          card_numbers: "**** 9171",

        ),
        _DataTableRow(
          orderNo: "#13702574",
          created_date: "04/10/2021",
          created_time: "02:39",
          client_name: "Matthew Collins",
          client_email: "c.matthews@outlook.com",
          products: "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
          distribution: "Colorado Springs",
          status: "Preparing",
          tracking: "705-610844",
          courier: "DHL",
          price: "\$2,198.03",
          card_type: "Credit Card",
          card_numbers: "**** 9171",

        ),
        _DataTableRow(
          orderNo: "#13702574",
          created_date: "04/10/2021",
          created_time: "02:39",
          client_name: "Matthew Collins",
          client_email: "c.matthews@outlook.com",
          products: "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
          distribution: "Colorado Springs",
          status: "Preparing",
          tracking: "705-610844",
          courier: "DHL",
          price: "\$2,198.03",
          card_type: "Credit Card",
          card_numbers: "**** 9171",

        ),
        _DataTableRow(
          orderNo: "#13702574",
          created_date: "04/10/2021",
          created_time: "02:39",
          client_name: "Matthew Collins",
          client_email: "c.matthews@outlook.com",
          products: "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
          distribution: "Colorado Springs",
          status: "Preparing",
          tracking: "705-610844",
          courier: "DHL",
          price: "\$2,198.03",
          card_type: "Credit Card",
          card_numbers: "**** 9171",

        ),
        _DataTableRow(
          orderNo: "#13702574",
          created_date: "04/10/2021",
          created_time: "02:39",
          client_name: "Matthew Collins",
          client_email: "c.matthews@outlook.com",
          products: "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
          distribution: "Colorado Springs",
          status: "Preparing",
          tracking: "705-610844",
          courier: "DHL",
          price: "\$2,198.03",
          card_type: "Credit Card",
          card_numbers: "**** 9171",

        )
      ],
    );
  }
}
