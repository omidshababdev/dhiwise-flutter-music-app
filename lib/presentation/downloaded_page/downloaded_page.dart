import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'bloc/downloaded_bloc.dart';
import 'models/downloaded_model.dart';
import 'models/downloadedlist_item_model.dart';
import 'widgets/downloadedlist_item_widget.dart';

// ignore_for_file: must_be_immutable
class DownloadedPage extends StatefulWidget {
  const DownloadedPage({Key? key})
      : super(
          key: key,
        );

  @override
  DownloadedPageState createState() => DownloadedPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DownloadedBloc>(
      create: (context) => DownloadedBloc(DownloadedState(
        downloadedModelObj: DownloadedModel(),
      ))
        ..add(DownloadedInitialEvent()),
      child: DownloadedPage(),
    );
  }
}

class DownloadedPageState extends State<DownloadedPage>
    with AutomaticKeepAliveClientMixin<DownloadedPage> {
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
                      SizedBox(height: 23.v),
                      _buildDownloadedList(context),
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
  Widget _buildDownloadedList(BuildContext context) {
    return BlocSelector<DownloadedBloc, DownloadedState, DownloadedModel?>(
      selector: (state) => state.downloadedModelObj,
      builder: (context, downloadedModelObj) {
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
          itemCount: downloadedModelObj?.downloadedlistItemList.length ?? 0,
          itemBuilder: (context, index) {
            DownloadedlistItemModel model =
                downloadedModelObj?.downloadedlistItemList[index] ??
                    DownloadedlistItemModel();
            return DownloadedlistItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
