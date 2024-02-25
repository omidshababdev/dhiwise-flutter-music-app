import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/searchresultplaylist_item_model.dart';

// ignore: must_be_immutable
class SearchresultplaylistItemWidget extends StatelessWidget {
  SearchresultplaylistItemWidget(
    this.searchresultplaylistItemModelObj, {
    Key? key,
    this.onTapCardBig,
  }) : super(
          key: key,
        );

  SearchresultplaylistItemModel searchresultplaylistItemModelObj;

  VoidCallback? onTapCardBig;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              onTapCardBig!.call();
            },
            child: Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: searchresultplaylistItemModelObj?.image,
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
                      searchresultplaylistItemModelObj.positions!,
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
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: searchresultplaylistItemModelObj?.image1,
                  height: 184.adaptSize,
                  width: 184.adaptSize,
                  radius: BorderRadius.circular(
                    28.h,
                  ),
                ),
                SizedBox(height: 13.v),
                SizedBox(
                  width: 172.h,
                  child: Text(
                    searchresultplaylistItemModelObj.positions1!,
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
      ],
    );
  }
}
