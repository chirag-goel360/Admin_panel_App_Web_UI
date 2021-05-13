import 'package:admin_panel/components/file_info_card.dart';
import 'package:admin_panel/constants.dart';
import 'package:admin_panel/models/MyFilesData.dart';
import 'package:flutter/material.dart';

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: defaultPadding,
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        return FileInfoCard(
          info: demoMyFiles[index],
        );
      },
    );
  }
}
