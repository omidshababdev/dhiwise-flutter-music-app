import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/podcastlist_item_model.dart';

// ignore: must_be_immutable
class PodcastlistItemWidget extends StatelessWidget {
  PodcastlistItemWidget(
    this.podcastlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PodcastlistItemModel podcastlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: podcastlistItemModelObj?.theJordanHarb,
                height: 160.adaptSize,
                width: 160.adaptSize,
                radius: BorderRadius.circular(
                  28.h,
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                podcastlistItemModelObj.billSullivan!,
                style: CustomTextStyles.titleMedium_1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
