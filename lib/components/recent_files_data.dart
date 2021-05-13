import 'package:admin_panel/constants.dart';
import 'package:admin_panel/models/RecentFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding,
              ),
              child: Text(
                fileInfo.title,
              ),
            ),
          ],
        ),
      ),
      DataCell(
        Text(
          fileInfo.date,
        ),
      ),
      DataCell(
        Text(
          fileInfo.size,
        ),
      ),
    ],
  );
}
