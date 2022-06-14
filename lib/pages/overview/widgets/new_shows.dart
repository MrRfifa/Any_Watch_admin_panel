import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../constants/style.dart';
import '../../../widgets/custom_text.dart';

/// Example without a datasource
class Shows extends StatelessWidget {
  const Shows({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12),
        ],
        border: Border.all(
          color: lightGrey,
          width: .5,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              const SizedBox(
                width: 10,
              ),
              CustomText(
                text: "Future adding",
                color: lightGrey,
                weight: FontWeight.bold,
              ),
            ],
          ),
          DataTable(
            columnSpacing: 140,
            horizontalMargin: 12,
            columns: const [
              DataColumn(
                label: CustomText(
                  text: "Name",
                  size: 18,
                  weight: FontWeight.bold,
                ),
              ),
              DataColumn(label: Text('type')),
              DataColumn(label: Text('New Season')),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text('Naruto')),
                  DataCell(Text('Anime')),
                  DataCell(
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: active, width: .5),
                          color: light,
                          borderRadius: BorderRadius.circular(20)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      child: CustomText(
                        text: "Not Available",
                        color: active.withOpacity(.7),
                        weight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              DataRow(cells: [
                DataCell(Text('Prison Break')),
                DataCell(Text('TV-Serie')),
                DataCell(Text('No')),
              ]),
              DataRow(cells: [
                DataCell(Text('42')),
                DataCell(Text('Tony')),
                DataCell(Text('8')),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
