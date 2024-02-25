import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/artistslist_item_model.dart';

// ignore: must_be_immutable
class ArtistslistItemWidget extends StatelessWidget {
  ArtistslistItemWidget(
    this.artistslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArtistslistItemModel artistslistItemModelObj;

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
                imagePath: artistslistItemModelObj?.drDeath,
                height: 160.adaptSize,
                width: 160.adaptSize,
                radius: BorderRadius.circular(
                  80.h,
                ),
              ),
              SizedBox(height: 25.v),
              Text(
                artistslistItemModelObj.artistsName!,
                style: CustomTextStyles.titleMedium_1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
