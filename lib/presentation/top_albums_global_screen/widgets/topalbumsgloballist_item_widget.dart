import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'package:dhiwise_flutter_music_app/widgets/custom_icon_button.dart';
import '../models/topalbumsgloballist_item_model.dart';

// ignore: must_be_immutable
class TopalbumsgloballistItemWidget extends StatelessWidget {
  TopalbumsgloballistItemWidget(
    this.topalbumsgloballistItemModelObj, {
    Key? key,
    this.onTapSongCard,
  }) : super(
          key: key,
        );

  TopalbumsgloballistItemModel topalbumsgloballistItemModelObj;

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
          Padding(
            padding: EdgeInsets.only(
              top: 28.v,
              bottom: 29.v,
            ),
            child: Text(
              topalbumsgloballistItemModelObj.zero!,
              style: theme.textTheme.titleMedium,
            ),
          ),
          CustomImageView(
            imagePath: topalbumsgloballistItemModelObj?.image,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            margin: EdgeInsets.only(left: 27.h),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 16.v,
              bottom: 16.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topalbumsgloballistItemModelObj.songTitle!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 9.v),
                Text(
                  topalbumsgloballistItemModelObj.details!,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.v),
            child: CustomIconButton(
              height: 32.adaptSize,
              width: 32.adaptSize,
              padding: EdgeInsets.all(2.h),
              child: CustomImageView(
                imagePath: topalbumsgloballistItemModelObj?.overflowMenu,
              ),
            ),
          ),
          CustomImageView(
            imagePath: topalbumsgloballistItemModelObj?.image1,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(
              left: 20.h,
              top: 28.v,
              bottom: 29.v,
            ),
          ),
        ],
      ),
    );
  }
}
