import 'package:appevolve_test/models/filter.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class _FilterBadge extends StatelessWidget {
  final Filter filter;
  const _FilterBadge({Key? key, required this.filter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textColor = filter.selected
        ? Theme.of(context).accentColor
        : COLOR_MEDIUM_GRAY ;
    return Container(
      margin: EdgeInsets.only(right: 22),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: filter.selected
              ? COLOR_TURQUOISE.withOpacity(0.25)
              : Colors.transparent),
      child: Row(
        children: [
          Text(
            filter.name,
            style: TextStyle(
                fontSize: 16,
                fontWeight: filter.selected ? FontWeight.w700 : FontWeight.w500,
                color: textColor),
          ),

          // Quantity marker
          Container(
            height: 20,
            padding: EdgeInsets.symmetric(horizontal: 6),
            margin: EdgeInsets.only(left: 8),
            decoration: BoxDecoration(
                color: textColor,
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: Center(
              child: Text(
                filter.qty.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w700),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TableQuickFilters extends StatelessWidget {
  final List<Filter> filters;
  const TableQuickFilters({Key? key, required this.filters}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [...filters.map((e) => _FilterBadge(filter: e)).toList()]);
  }
}
