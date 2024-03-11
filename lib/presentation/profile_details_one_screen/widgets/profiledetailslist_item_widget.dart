import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/profiledetailslist_item_model.dart';

// ignore: must_be_immutable
class ProfiledetailslistItemWidget extends StatelessWidget {
  ProfiledetailslistItemWidget(
    this.profiledetailslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfiledetailslistItemModel profiledetailslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 184.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: profiledetailslistItemModelObj?.image,
            height: 184.adaptSize,
            width: 184.adaptSize,
            radius: BorderRadius.circular(
              28.h,
            ),
          ),
          SizedBox(height: 13.v),
          SizedBox(
            width: 162.h,
            child: Text(
              profiledetailslistItemModelObj.positions!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleMedium_1.copyWith(
                height: 1.40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
