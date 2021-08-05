import 'package:appevolve_test/adaptive.dart';
import 'package:appevolve_test/colors.dart';
import 'package:appevolve_test/widgets/helpers.dart';
import 'package:flutter/material.dart';

const Map<String, int> proportions = {
  'order_no': 1,
  'created': 1,
  'client': 3,
  'products': 3,
  'distribution': 1,
  'status': 2,
  'tracking': 1,
  'price': 1,
  'payment': 1
};

const List<Map<String, String>> orders = [
  {
    'orderNo': "#13702574",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
    'distribution': "Colorado Springs",
    'status': "Preparing",
    'tracking': "705-610844",
    'courier': "DHL",
    'price': "\$2,198.03",
    'card_type': "Credit Card",
    'card_number': "**** 9171",
  },
  {
    'orderNo': "#13702574",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
    'distribution': "Colorado Springs",
    'status': "Preparing",
    'tracking': "705-610844",
    'courier': "DHL",
    'price': "\$2,198.03",
    'card_type': "Credit Card",
    'card_number': "**** 9171",
  },
  {
    'orderNo': "#13702574",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
    'distribution': "Colorado Springs",
    'status': "Preparing",
    'tracking': "705-610844",
    'courier': "DHL",
    'price': "\$2,198.03",
    'card_type': "Credit Card",
    'card_number': "**** 9171",
  },
  {
    'orderNo': "#13702574",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
    'distribution': "Colorado Springs",
    'status': "Preparing",
    'tracking': "705-610844",
    'courier': "DHL",
    'price': "\$2,198.03",
    'card_type': "Credit Card",
    'card_number': "**** 9171",
  },
  {
    'orderNo': "#13702574",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
    'distribution': "Colorado Springs",
    'status': "Preparing",
    'tracking': "705-610844",
    'courier': "DHL",
    'price': "\$2,198.03",
    'card_type': "Credit Card",
    'card_number': "**** 9171",
  },
  {
    'orderNo': "#13702574",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
    'distribution': "Colorado Springs",
    'status': "Preparing",
    'tracking': "705-610844",
    'courier': "DHL",
    'price': "\$2,198.03",
    'card_type': "Credit Card",
    'card_number': "**** 9171",
  },
  {
    'orderNo': "#13702574",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
    'distribution': "Colorado Springs",
    'status': "Preparing",
    'tracking': "705-610844",
    'courier': "DHL",
    'price': "\$2,198.03",
    'card_type': "Credit Card",
    'card_number': "**** 9171",
  },
  {
    'orderNo': "#13702574",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
    'distribution': "Colorado Springs",
    'status': "Preparing",
    'tracking': "705-610844",
    'courier': "DHL",
    'price': "\$2,198.03",
    'card_type': "Credit Card",
    'card_number': "**** 9171",
  },
  {
    'orderNo': "#13702574",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
    'distribution': "Colorado Springs",
    'status': "Preparing",
    'tracking': "705-610844",
    'courier': "DHL",
    'price': "\$2,198.03",
    'card_type': "Credit Card",
    'card_number': "**** 9171",
  }
];

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

  const _DataCell(
      {Key? key, required this.text, this.subText, this.highlighted = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 12,
              fontWeight: (highlighted) ? FontWeight.w600 : FontWeight.normal),
        ),
        if (subText != null)
          Text(subText!,
              style: TextStyle(
                  fontSize: 12, color: Color.fromRGBO(140, 138, 152, 1)))
      ],
    );
  }
}

class _OrderItem extends StatelessWidget {
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
  final String card_number;

  const _OrderItem(
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
      required this.card_number})
      : super(key: key);

  Widget _buildRow(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 8),
      margin: EdgeInsets.only(top: 8),
      decoration: whiteBoxDecoration,
      child: Row(
        children: [
          Checkbox(value: false, onChanged: (_) {}),
          Expanded(
            child: _DataCell(
              text: orderNo,
              highlighted: true,
            ),
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
              subText: card_number,
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

  Widget _buildTable(BuildContext context) {
    final Map<String, String> fields = {
      'Client Name': client_name,
      'Client Email': client_email,
      'Delivery Company': courier,
      'Tracking Code': tracking,
      'Products': products,
      'Price': price,
      'Payment Method': "$card_type, $card_number"
    };

    return Container(
      decoration: whiteBoxDecoration,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8, bottom: 16, left: 8, right: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15)),
                      margin: EdgeInsets.only(right: 8),
                    ),
                    Text(
                      orderNo,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: COLOR_SUPER_DARK_BLUE),
                    )
                  ],
                ),
                _StatusBadge(status: status)
              ],
            ),
          ),
          SectionDivider(),
          Container(
            padding: EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$created_date, $created_time",
                  style: TextStyle(fontSize: 12, color: COLOR_MEDIUM_GRAY),
                ),
                Text(distribution,
                    style: TextStyle(fontSize: 12, color: COLOR_MEDIUM_GRAY))
              ],
            ),
          ),
          ...fields.entries.toList().asMap().entries.map((e) => Container(
                decoration:
                    e.key % 2 == 0 ? greyBoxDecoration : whiteBoxDecoration,
                constraints: BoxConstraints(minHeight: 30),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      e.value.key,
                      style: TextStyle(fontSize: 12, color: COLOR_MEDIUM_GRAY),
                    ),
                    Expanded(
                      child: Text(
                        e.value.value,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 12,
                          color: COLOR_SUPER_DARK_BLUE,
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = isDesktopDisplay(context);

    return (isDesktop) ? _buildRow(context) : _buildTable(context);
  }
}

class _DataTableHeader extends StatelessWidget {
  const _DataTableHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: whiteBoxDecoration,
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

class _Pagination extends StatelessWidget {
  const _Pagination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = isDesktopDisplay(context);
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("1-20 of 294"),
            if (isDesktop)
              OutlinedButton(
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 26,
                        child: Center(
                          child: Text(
                            "Next Page",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
                style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 0, vertical: 0)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Theme.of(context).accentColor)),
              ),
            Row(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      "1",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                  ),
                  height: 40,
                  width: 40,
                  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                  decoration: whiteBoxDecoration,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      "of 15",
                      style: TextStyle(fontSize: 14),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                  child: Center(
                    child: Icon(Icons.arrow_left),
                  ),
                  height: 40,
                  width: 40,
                  decoration: whiteBoxDecoration,
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                    child: Center(
                      child: Icon(Icons.arrow_right),
                    ),
                    height: 40,
                    width: 40,
                    decoration: whiteBoxDecoration)
              ],
            )
          ]),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  final String status;
  const _StatusBadge({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          color: Colors.amber.withOpacity(0.25),
          borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: Text(
          status,
          style: TextStyle(
              color: Colors.amber, fontSize: 12, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

class OrdersTable extends StatelessWidget {
  const OrdersTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDesktop = isDesktopDisplay(context);
    return Column(
      children: [
        if (isDesktop) _DataTableHeader(),
        ...orders.map((e) => _OrderItem(
              orderNo: e['orderNo']!,
              created_date: e['created_date']!,
              created_time: e['created_time']!,
              client_name: e['client_name']!,
              client_email: e['client_email']!,
              products: e['products']!,
              distribution: e['distribution']!,
              status: e['status']!,
              tracking: e['tracking']!,
              courier: e['courier']!,
              price: e['price']!,
              card_type: e['card_type']!,
              card_number: e['card_number']!,
            )),
        _Pagination()
      ],
    );
  }
}
