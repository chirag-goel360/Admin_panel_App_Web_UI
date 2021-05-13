import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String svgSrc;
  final String title;
  final String totalStorage;
  final int numOfFiles;
  final int percentage;
  final Color color;

  CloudStorageInfo({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}
