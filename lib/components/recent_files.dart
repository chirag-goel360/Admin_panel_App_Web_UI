import 'package:admin_panel/components/recent_files_data.dart';
import 'package:admin_panel/constants.dart';
import 'package:admin_panel/models/RecentFileData.dart';
import 'package:flutter/material.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        defaultPadding,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defaultPadding,
              columns: [
                DataColumn(
                  label: Text(
                    "File Name",
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Date",
                  ),
                ),
                DataColumn(
                  label: Text(
                    "Size",
                  ),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) {
                  return recentFileDataRow(
                    demoRecentFiles[index],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
