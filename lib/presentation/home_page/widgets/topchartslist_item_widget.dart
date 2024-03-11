import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/topchartslist_item_model.dart';

// ignore: must_be_immutable
class TopchartslistItemWidget extends StatelessWidget {
  TopchartslistItemWidget(
    this.topchartslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TopchartslistItemModel topchartslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: topchartslistItemModelObj?.top,
            height: 160.adaptSize,
            width: 160.adaptSize,
            radius: BorderRadius.circular(
              24.h,
            ),
            margin: EdgeInsets.only(bottom: 31.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 66.v,
              bottom: 96.v,
            ),
            child: Text(
              topchartslistItemModelObj.price!,
              style: CustomTextStyles.headlineSmallWhiteA700,
            ),
          ),
          Spacer(
            flex: 47,
          ),
          CustomImageView(
            imagePath: topchartslistItemModelObj?.top1,
            height: 160.adaptSize,
            width: 160.adaptSize,
            radius: BorderRadius.circular(
              24.h,
            ),
            margin: EdgeInsets.only(bottom: 31.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 66.v,
              bottom: 96.v,
            ),
            child: Text(
              topchartslistItemModelObj.price1!,
              style: CustomTextStyles.headlineSmallWhiteA700,
            ),
          ),
          Spacer(
            flex: 52,
          ),
          Column(
            children: [
              SizedBox(
                height: 160.adaptSize,
                width: 160.adaptSize,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: topchartslistItemModelObj?.top2,
                      height: 160.adaptSize,
                      width: 160.adaptSize,
                      radius: BorderRadius.circular(
                        24.h,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        topchartslistItemModelObj.price2!,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.headlineSmallWhiteA700,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              Text(
                topchartslistItemModelObj.price3!,
                style: CustomTextStyles.titleMedium_1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
