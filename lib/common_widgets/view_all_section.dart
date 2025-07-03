import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class ViewAllSection extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final VoidCallback onPressed;
  const ViewAllSection(
      {super.key, required this.title, this.buttonTitle = "View All", required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical:0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 15,
                  color: TColor.primaryText80,
                  fontWeight: FontWeight.w600),
            ),
          ),
          TextButton(onPressed: onPressed, 
          child: Text(
              buttonTitle,
              style: TextStyle(
                  fontSize: 11,
                  color: TColor.org,
                  ),
            ),)
        ],
      ),
    );
  }
}
