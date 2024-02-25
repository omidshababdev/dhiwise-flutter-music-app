import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/topalbumsglobal_item_model.dart';

// ignore: must_be_immutable
class TopalbumsglobalItemWidget extends StatelessWidget {
  TopalbumsglobalItemWidget(
    this.topalbumsglobalItemModelObj, {
    Key? key,
    this.onTapCard,
  }) : super(
          key: key,
        );

  TopalbumsglobalItemModel topalbumsglobalItemModelObj;

  VoidCallback? onTapCard;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 184.h,
      child: GestureDetector(
        onTap: () {
          onTapCard!.call();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 188.v,
              width: 184.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage5,
                    height: 188.v,
                    width: 184.h,
                    radius: BorderRadius.circular(
                      24.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 98.h,
                      child: Text(
                        topalbumsglobalItemModelObj.price!,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.headlineSmallWhiteA700.copyWith(
                          height: 1.20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.v),
            Text(
              topalbumsglobalItemModelObj.loremIpsumDolor!,
              style: theme.textTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }
}
