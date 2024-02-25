import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/popularpodcastslist_item_model.dart';

// ignore: must_be_immutable
class PopularpodcastslistItemWidget extends StatelessWidget {
  PopularpodcastslistItemWidget(
    this.popularpodcastslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PopularpodcastslistItemModel popularpodcastslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: popularpodcastslistItemModelObj?.image,
                height: 160.adaptSize,
                width: 160.adaptSize,
                radius: BorderRadius.circular(
                  28.h,
                ),
              ),
              SizedBox(height: 9.v),
              SizedBox(
                width: 150.h,
                child: Text(
                  popularpodcastslistItemModelObj.billSullivan!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleMedium_1.copyWith(
                    height: 1.40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
