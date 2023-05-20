import 'package:flutter/material.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

class CustomBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SolidBottomSheet(
      headerBar: Container(
        color: Colors.blue,
        width: 150,
        height: 150,
      ),
      body: Container(
        color: Colors.orange,
        width: 150,
        height: 150,
      ),
    );
  }
}
