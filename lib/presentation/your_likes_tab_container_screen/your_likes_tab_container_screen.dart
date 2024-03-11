import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'package:dhiwise_flutter_music_app/presentation/downloaded_page/downloaded_page.dart';
import 'package:dhiwise_flutter_music_app/presentation/queue_page/queue_page.dart';
import 'package:dhiwise_flutter_music_app/presentation/your_likes_page/your_likes_page.dart';
import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_title.dart';
import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:dhiwise_flutter_music_app/widgets/app_bar/custom_app_bar.dart';
import 'bloc/your_likes_tab_container_bloc.dart';
import 'models/your_likes_tab_container_model.dart';

class YourLikesTabContainerScreen extends StatefulWidget {
  const YourLikesTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  YourLikesTabContainerScreenState createState() =>
      YourLikesTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<YourLikesTabContainerBloc>(
      create: (context) => YourLikesTabContainerBloc(YourLikesTabContainerState(
        yourLikesTabContainerModelObj: YourLikesTabContainerModel(),
      ))
        ..add(YourLikesTabContainerInitialEvent()),
      child: YourLikesTabContainerScreen(),
    );
  }
}

class YourLikesTabContainerScreenState
    extends State<YourLikesTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YourLikesTabContainerBloc, YourLikesTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 31.v),
                child: Column(
                  children: [
                    _buildTabview(context),
                    SizedBox(
                      height: 797.v,
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          YourLikesPage.builder(context),
                          QueuePage.builder(context),
                          DownloadedPage.builder(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 11.v,
          bottom: 11.v,
        ),
      ),
      title: AppbarTitle(
        text: "lbl_podcasts".tr,
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgRewind,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 11.v,
            right: 11.h,
          ),
        ),
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgSettingsGray90001,
          margin: EdgeInsets.only(
            left: 20.h,
            top: 11.v,
            right: 35.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 39.v,
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimaryContainer,
        labelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        indicatorColor: theme.colorScheme.onPrimaryContainer,
        tabs: [
          Tab(
            child: Text(
              "lbl_your_likes".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_queue".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_downloaded".tr,
            ),
          ),
        ],
      ),
    );
  }
}
