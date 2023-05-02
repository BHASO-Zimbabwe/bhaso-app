import 'package:bhaso/features/utils/fontsAndColors_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DairyAddPage extends StatelessWidget {
  const DairyAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          decoration: const BoxDecoration(
            color: BhasoColors.primary,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30))
          ),
        ),

      ),
    );
  }
}
