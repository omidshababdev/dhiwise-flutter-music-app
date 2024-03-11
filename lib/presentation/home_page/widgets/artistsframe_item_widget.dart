import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/artistsframe_item_model.dart';

// ignore: must_be_immutable
class ArtistsframeItemWidget extends StatelessWidget {
  ArtistsframeItemWidget(
    this.artistsframeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArtistsframeItemModel artistsframeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: artistsframeItemModelObj?.arianaGrande,
                height: 160.adaptSize,
                width: 160.adaptSize,
                radius: BorderRadius.circular(
                  80.h,
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                artistsframeItemModelObj.artistsName!,
                style: CustomTextStyles.titleMedium_1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
