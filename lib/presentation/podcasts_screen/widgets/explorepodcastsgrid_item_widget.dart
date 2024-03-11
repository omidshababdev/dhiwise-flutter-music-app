import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import '../models/explorepodcastsgrid_item_model.dart';

// ignore: must_be_immutable
class ExplorepodcastsgridItemWidget extends StatelessWidget {
  ExplorepodcastsgridItemWidget(
    this.explorepodcastsgridItemModelObj, {
    Key? key,
    this.onTapExploreCard,
  }) : super(
          key: key,
        );

  ExplorepodcastsgridItemModel explorepodcastsgridItemModelObj;

  VoidCallback? onTapExploreCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapExploreCard!.call();
      },
      child: Container(
        decoration: AppDecoration.gradientRedToOnPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 21.v,
                bottom: 76.v,
              ),
              child: Text(
                explorepodcastsgridItemModelObj.categories!,
                style: CustomTextStyles.titleMediumWhiteA700_1,
              ),
            ),
            CustomImageView(
              imagePath: explorepodcastsgridItemModelObj?.charts,
              height: 91.v,
              width: 81.h,
              radius: BorderRadius.circular(
                12.h,
              ),
              margin: EdgeInsets.only(
                left: 27.h,
                top: 29.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
