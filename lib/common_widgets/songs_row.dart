// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:music_player/common_widgets/app_gap.dart';
import '../common/color_extension.dart';

class SongsRow extends StatelessWidget {
  final Map sObj;
  final VoidCallback onPressedPlay;
  final VoidCallback onPressed;
  const SongsRow(
      {super.key,
      required this.sObj,
      required this.onPressedPlay,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: onPressedPlay,
              icon: Image.asset(
                "assets/img/play_btn.png",
                width: 25,
                height: 25,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sObj["name"],
                    maxLines: 1,
                    style: TextStyle(
                        color: TColor.primaryText60,
                        fontSize: 13,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    sObj["artists"],
                    maxLines: 1,
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            ),
            Column(
              
              children: [
                Image.asset("assets/img/fav.png",height: 12,width: 12,),
                const AppGap(height: 4,),
                IgnorePointer(
                  ignoring: true,
                  child: RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    unratedColor: TColor.org.withOpacity(0.3),
                    itemCount: 5,
                    itemSize: 12,
                    itemPadding: EdgeInsets.zero,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: TColor.org,
                    ),
                    updateOnDrag: false,
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
        Divider(
          color: Colors.white.withOpacity(0.07),
          indent: 50,
        ),
      ],
    );
  }
}
