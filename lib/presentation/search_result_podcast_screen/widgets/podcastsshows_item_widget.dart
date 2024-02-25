import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/podcastsshows_item_model.dart';

// ignore: must_be_immutable
class PodcastsshowsItemWidget extends StatelessWidget {
  PodcastsshowsItemWidget(
    this.podcastsshowsItemModelObj, {
    Key? key,
    this.onTapPodcastCard,
  }) : super(
          key: key,
        );

  PodcastsshowsItemModel podcastsshowsItemModelObj;

  VoidCallback? onTapPodcastCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            onTapPodcastCard!.call();
          },
          child: Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: podcastsshowsItemModelObj?.theJordanHarb,
                  height: 160.adaptSize,
                  width: 160.adaptSize,
                  radius: BorderRadius.circular(
                    28.h,
                  ),
                ),
                SizedBox(height: 9.v),
                Text(
                  podcastsshowsItemModelObj.billSullivan!,
                  style: CustomTextStyles.titleMedium_1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
