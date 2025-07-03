import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class TittleSection extends StatelessWidget {
  final String tittle;
  const TittleSection({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                tittle,
                style: TextStyle(
                    fontSize: 15,
                    color: TColor.primaryText80,
                    fontWeight: FontWeight.w600),
              ),
            );
  }
}