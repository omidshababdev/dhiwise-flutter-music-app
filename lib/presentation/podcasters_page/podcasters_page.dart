import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'bloc/podcasters_bloc.dart';
import 'models/podcasters_model.dart';
import 'models/podcasterslist_item_model.dart';
import 'widgets/podcasterslist_item_widget.dart';

// ignore_for_file: must_be_immutable
class PodcastersPage extends StatefulWidget {
  const PodcastersPage({Key? key})
      : super(
          key: key,
        );

  @override
  PodcastersPageState createState() => PodcastersPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PodcastersBloc>(
      create: (context) => PodcastersBloc(PodcastersState(
        podcastersModelObj: PodcastersModel(),
      ))
        ..add(PodcastersInitialEvent()),
      child: PodcastersPage(),
    );
  }
}

class PodcastersPageState extends State<PodcastersPage>
    with AutomaticKeepAliveClientMixin<PodcastersPage> {
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
                      _buildHorizontalLayout(context),
                      SizedBox(height: 22.v),
                      Divider(),
                      SizedBox(height: 29.v),
                      _buildPodcastersList(context),
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
  Widget _buildHorizontalLayout(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "lbl_sort_by".tr,
          style: theme.textTheme.titleLarge,
        ),
        Spacer(),
        Text(
          "msg_recently_downloaded".tr,
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
  Widget _buildPodcastersList(BuildContext context) {
    return BlocSelector<PodcastersBloc, PodcastersState, PodcastersModel?>(
      selector: (state) => state.podcastersModelObj,
      builder: (context, podcastersModelObj) {
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
          itemCount: podcastersModelObj?.podcasterslistItemList.length ?? 0,
          itemBuilder: (context, index) {
            PodcasterslistItemModel model =
                podcastersModelObj?.podcasterslistItemList[index] ??
                    PodcasterslistItemModel();
            return PodcasterslistItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
