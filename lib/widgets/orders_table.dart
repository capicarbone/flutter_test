import 'dart:html';

import 'package:appevolve_test/a_e_icons_icons.dart';
import 'package:appevolve_test/adaptive.dart';
import 'package:appevolve_test/colors.dart';
import 'package:appevolve_test/widgets/chip.dart';
import 'package:appevolve_test/widgets/custom_checkbox.dart';
import 'package:appevolve_test/widgets/helpers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Map<String, int> proportions = {
  'order_no': 4,
  'created': 4,
  'client': 7,
  'products': 7,
  'distribution': 5,
  'status': 5,
  'tracking': 3,
  'price': 4,
  'payment': 3
};

const List<Map<String, String?>> orders = [
  {
    'orderNo': "#13702571",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses,",
    'more_products': ' +5 more',
    'distribution': "Colorado Springs",
    'status': "Preparing",
    'tracking': "705-610844",
    'courier': "DHL",
    'price': "\$2,198.03",
    'card_type': "Credit Card",
    'card_number': "**** 9171",
  },
  {
    'orderNo': "#13702572",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
    'more_products': null,
    'distribution': "Colorado Springs",
    'status': "Sent",
    'tracking': "705-610844",
    'courier': "DHL",
    'price': "\$2,198.03",
    'card_type': "Credit Card",
    'card_number': "**** 9171",
  },
  {
    'orderNo': "#13702573",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses,",
    'more_products': ' +10 more',
    'distribution': "Colorado Springs",
    'status': "Returned",
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
    'more_products': null,
    'distribution': "Colorado Springs",
    'status': "Cancelled",
    'tracking': "705-610844",
    'courier': "DHL",
    'price': "\$2,198.03",
    'card_type': "Credit Card",
    'card_number': "**** 9171",
  },
  {
    'orderNo': "#13702575",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses,",
    'more_products': ' +1 more',
    'distribution': "Colorado Springs",
    'status': "Delivered",
    'tracking': "705-610844",
    'courier': "DHL",
    'price': "\$2,198.03",
    'card_type': "Credit Card",
    'card_number': "**** 9171",
  },
  {
    'orderNo': "#13702576",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
    'more_products': null,
    'distribution': "Colorado Springs",
    'status': "Sent",
    'tracking': "705-610844",
    'courier': "DHL",
    'price': "\$2,198.03",
    'card_type': "Credit Card",
    'card_number': "**** 9171",
  },
  {
    'orderNo': "#13702577",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses,",
    'more_products': ' +3 more',
    'distribution': "Colorado Springs",
    'status': "Cancelled",
    'tracking': "705-610844",
    'courier': "DHL",
    'price': "\$2,198.03",
    'card_type': "Credit Card",
    'card_number': "**** 9171",
  },
  {
    'orderNo': "#13702578",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses",
    'more_products': null,
    'distribution': "Colorado Springs",
    'status': "Delivered",
    'tracking': "705-610844",
    'courier': "DHL",
    'price': "\$2,198.03",
    'card_type': "Credit Card",
    'card_number': "**** 9171",
  },
  {
    'orderNo': "#13702579",
    'created_date': "04/10/2021",
    'created_time': "02:39",
    'client_name': "Matthew Collins",
    'client_email': "c.matthews@outlook.com",
    'products': "Hourglass Wallet on Chain, Void Butterfly Sunglasses,",
    'more_products': ' +2 more',
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
  final bool selectedAsc;
  const _HeaderCell({Key? key, required this.title, this.selectedAsc = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title.toUpperCase(),
          style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: (selectedAsc) ? COLOR_SUPER_DARK_BLUE : COLOR_MEDIUM_GRAY),
        ),
        SizedBox(
          width: 4,
        ),
        Container(
          height: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                AEIcons.up,
                size: 5,
                color: (selectedAsc) ? COLOR_MEDIUM_GRAY : COLOR_LIGHT_GRAY,
              ),
              SizedBox(
                height: 2,
              ),
              Icon(
                AEIcons.down,
                size: 5,
                color: COLOR_LIGHT_GRAY,
              )
            ],
          ),
        )
      ],
    );
  }
}

class _DataCell extends StatelessWidget {
  final String text;
  final String? subText;
  final String? highlightedText;
  final bool highlighted;

  const _DataCell(
      {Key? key, required this.text, this.subText, this.highlightedText, this.highlighted = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            style: GoogleFonts.manrope(fontSize: 12),
        children: [
          TextSpan(text: text, style: TextStyle(
              fontWeight: (highlighted) ? FontWeight.w600 : FontWeight.normal)),
          if (highlightedText != null)
          TextSpan(text: highlightedText, style: TextStyle(color: Theme.of(context).accentColor, fontWeight: FontWeight.w600))
        ]
    )
          ,
        ),
        if (subText != null)
          Text(subText!,
              style: TextStyle(
                  fontSize: 12, color: Color.fromRGBO(140, 138, 152, 1)))
      ],
    );
  }
}

class _OrderItem extends StatefulWidget {
  final String orderNo;
  final String created_date;
  final String created_time;
  final String client_name;
  final String client_email;
  final String products;
  final String? moreProducts;
  final String distribution;
  final String status;
  final String tracking;
  final String courier;
  final String price;
  final String card_type;
  final String card_number;
  final bool checked;

  const _OrderItem(
      {Key? key,
      required this.orderNo,
      required this.created_date,
      required this.created_time,
      required this.client_name,
      required this.client_email,
      required this.products,
        required this.moreProducts,
      required this.distribution,
      required this.status,
      required this.tracking,
      required this.courier,
      required this.price,
      required this.card_type,
      required this.card_number,
      this.checked = false})
      : super(key: key);

  @override
  __OrderItemState createState() => __OrderItemState(checked);
}

class __OrderItemState extends State<_OrderItem> {

  bool checked = false;

  __OrderItemState(this.checked);

  Widget _buildRow(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          checked = !checked;
        });
      },
      child: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 8),
        margin: EdgeInsets.only(top: 8),
        decoration: whiteBoxDecoration.copyWith(
          boxShadow: [
            if (checked)
            BoxShadow(color: COLOR_MEDIUM_GRAY.withAlpha(50),
            blurRadius: 10)
          ]
        ),
        child: Row(
          children: [
            CustomCheckbox(checked: checked,),
            SizedBox(width: 10,),
            Expanded(
              child: _DataCell(
                text: widget.orderNo,
                highlighted: true,
              ),
              flex: proportions['order_no']!,
            ),
            Expanded(
              child: _DataCell(
                text: widget.created_date,
                subText: widget.created_time,
              ),
              flex: proportions['created']!,
            ),
            Expanded(
              child: _DataCell(
                text: widget.client_name,
                subText: widget.client_email,
              ),
              flex: proportions['client']!,
            ),
            Expanded(
              child: _DataCell(
                text: widget.products,
                highlightedText: widget.moreProducts,
              ),
              flex: proportions['products']!,
            ),
            Expanded(
              child: _DataCell(
                text: widget.distribution,
              ),
              flex: proportions['distribution']!,
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    _StatusBadge(
                      status: widget.status,
                    ),
                  ],
                ),
              ),
              flex: proportions['status']!,
            ),
            Expanded(
              child: _DataCell(
                text: widget.tracking,
                subText: widget.courier,
              ),
              flex: proportions['tracking']!,
            ),
            Expanded(
              child: _DataCell(
                text: widget.price,
              ),
              flex: proportions['price']!,
            ),
            Expanded(
              child: _DataCell(
                text: widget.card_type,
                subText: widget.card_number,
              ),
              flex: proportions['payment']!,
            ),
            Expanded(
              child: Row(children: [
                Container(height: 4, width: 4, decoration: BoxDecoration(
                    color: COLOR_SUPER_DARK_BLUE,
                    borderRadius: BorderRadius.circular(4)
                ),),
                SizedBox(width: 4,),
                Container(height: 4, width: 4, decoration: BoxDecoration(
                    color: COLOR_SUPER_DARK_BLUE,
                    borderRadius: BorderRadius.circular(4)
                ),),
                SizedBox(width: 4,),
                Container(height: 4, width: 4, decoration: BoxDecoration(
                    color: COLOR_SUPER_DARK_BLUE,
                    borderRadius: BorderRadius.circular(4)
                ),)
              ],),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTable(BuildContext context) {
    final Map<String, String> fields = {
      'Client Name': widget.client_name,
      'Client Email': widget.client_email,
      'Delivery Company': widget.courier,
      'Tracking Code': widget.tracking,
      'Products': widget.products,
      'Price': widget.price,
      'Payment Method': "${widget.card_type}, ${widget.card_number}"
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
                      child: Icon(AEIcons.order, color: Colors.white, size: 16,),
                    ),
                    Text(
                      widget.orderNo,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: COLOR_SUPER_DARK_BLUE),
                    )
                  ],
                ),
                _StatusBadge(status: widget.status)
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
                  "${widget.created_date}, ${widget.created_time}",
                  style: TextStyle(fontSize: 12, color: COLOR_MEDIUM_GRAY),
                ),
                Text(widget.distribution,
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
          CustomCheckbox(),
          SizedBox(width: 10,),
          Expanded(
              child: _HeaderCell(
                title: "order no.",
              ),
              flex: proportions['order_no']!),
          Expanded(
            child: _HeaderCell(
              title: 'created',
              selectedAsc: true,
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
              TextButton(
                onPressed: () {},
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 22),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 26,
                        child: Center(
                          child: Text(
                            "Next Page",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        AEIcons.next_page,
                        color: Colors.white,
                        size: 15,
                      )
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
                    child: Icon(
                      AEIcons.back,
                      size: 14,
                      color: COLOR_TURQUOISE.withOpacity(0.25),
                    ),
                  ),
                  height: 40,
                  width: 40,
                  decoration: whiteBoxDecoration,
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                    child: Center(
                      child: Icon(
                        AEIcons.next,
                        size: 14,
                        color: COLOR_TURQUOISE,
                      ),
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

    Color color;
    switch (status){
      case 'Preparing':
        color = COLOR_ORANGE; break;
      case 'Sent':
        color = COLOR_BLUE; break;
      case 'Returned':
        color = COLOR_DARK_BLUE; break;
      case 'Cancelled':
        color = COLOR_RED; break;
      default:
        color = COLOR_TURQUOISE;
    }

    return CustomChip(text: status, color: color,);
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
              moreProducts: e['more_products'],
              distribution: e['distribution']!,
              status: e['status']!,
              tracking: e['tracking']!,
              courier: e['courier']!,
              price: e['price']!,
              card_type: e['card_type']!,
              card_number: e['card_number']!,
          checked: e['orderNo']! == "#13702571",
            )),
        _Pagination()
      ],
    );
  }
}
