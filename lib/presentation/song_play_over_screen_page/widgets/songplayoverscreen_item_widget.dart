import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/songplayoverscreen_item_model.dart';

// ignore: must_be_immutable
class SongplayoverscreenItemWidget extends StatelessWidget {
  SongplayoverscreenItemWidget(
    this.songplayoverscreenItemModelObj, {
    Key? key,
    this.onTapSongCard,
  }) : super(
          key: key,
        );

  SongplayoverscreenItemModel songplayoverscreenItemModelObj;

  VoidCallback? onTapSongCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapSongCard!.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 223.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: songplayoverscreenItemModelObj?.image,
                        height: 80.adaptSize,
                        width: 80.adaptSize,
                        radius: BorderRadius.circular(
                          20.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 18.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              songplayoverscreenItemModelObj.songTitle!,
                              style: theme.textTheme.titleMedium,
                            ),
                            SizedBox(height: 7.v),
                            Text(
                              songplayoverscreenItemModelObj.details!,
                              style: theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: songplayoverscreenItemModelObj?.image1,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 24.v),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: songplayoverscreenItemModelObj?.image2,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              left: 20.h,
              top: 30.v,
              bottom: 30.v,
            ),
          ),
        ],
      ),
    );
  }
}
