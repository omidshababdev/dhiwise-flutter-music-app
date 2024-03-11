import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'bloc/your_likes_bloc.dart';
import 'models/your_likes_model.dart';
import 'models/yourlikes_item_model.dart';
import 'widgets/yourlikes_item_widget.dart';

// ignore_for_file: must_be_immutable
class YourLikesPage extends StatefulWidget {
  const YourLikesPage({Key? key})
      : super(
          key: key,
        );

  @override
  YourLikesPageState createState() => YourLikesPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<YourLikesBloc>(
      create: (context) => YourLikesBloc(YourLikesState(
        yourLikesModelObj: YourLikesModel(),
      ))
        ..add(YourLikesInitialEvent()),
      child: YourLikesPage(),
    );
  }
}

class YourLikesPageState extends State<YourLikesPage>
    with AutomaticKeepAliveClientMixin<YourLikesPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 32.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildAutoLayoutHorizontal(context),
                      SizedBox(height: 22.v),
                      Divider(),
                      SizedBox(height: 23.v),
                      _buildYourLikes(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontal(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_sort_by".tr,
          style: theme.textTheme.titleLarge,
        ),
        Spacer(),
        Text(
          "lbl_recently_added".tr,
          style: CustomTextStyles.titleMediumOnPrimaryContainer16,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgIconlyCurvedSwap,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(
            left: 12.h,
            bottom: 4.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildYourLikes(BuildContext context) {
    return BlocSelector<YourLikesBloc, YourLikesState, YourLikesModel?>(
      selector: (state) => state.yourLikesModelObj,
      builder: (context, yourLikesModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: yourLikesModelObj?.yourlikesItemList.length ?? 0,
          itemBuilder: (context, index) {
            YourlikesItemModel model =
                yourLikesModelObj?.yourlikesItemList[index] ??
                    YourlikesItemModel();
            return YourlikesItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
