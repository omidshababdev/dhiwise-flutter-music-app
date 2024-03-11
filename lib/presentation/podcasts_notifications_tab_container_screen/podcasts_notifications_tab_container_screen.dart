import 'package:flutter/material.dart';import 'package:dhiwise_flutter_music_app/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/podcasts_notifications_page/podcasts_notifications_page.dart';import 'package:dhiwise_flutter_music_app/presentation/songs_notifications_page/songs_notifications_page.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_leading_image.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_title.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/custom_app_bar.dart';import 'bloc/podcasts_notifications_tab_container_bloc.dart';import 'models/podcasts_notifications_tab_container_model.dart';class PodcastsNotificationsTabContainerScreen extends StatefulWidget {const PodcastsNotificationsTabContainerScreen({Key? key}) : super(key: key);

@override PodcastsNotificationsTabContainerScreenState createState() =>  PodcastsNotificationsTabContainerScreenState();

static Widget builder(BuildContext context) { return BlocProvider<PodcastsNotificationsTabContainerBloc>(create: (context) => PodcastsNotificationsTabContainerBloc(PodcastsNotificationsTabContainerState(podcastsNotificationsTabContainerModelObj: PodcastsNotificationsTabContainerModel()))..add(PodcastsNotificationsTabContainerInitialEvent()), child: PodcastsNotificationsTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class PodcastsNotificationsTabContainerScreenState extends State<PodcastsNotificationsTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { return BlocBuilder<PodcastsNotificationsTabContainerBloc, PodcastsNotificationsTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 33.v), child: Column(children: [_buildTabview(context), SizedBox(height: 847.v, child: TabBarView(controller: tabviewController, children: [SongsNotificationsPage.builder(context), PodcastsNotificationsPage.builder(context)]))])))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 48.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 9.v), onTap: () {onTapArrowDown(context);}), title: AppbarTitle(text: "lbl_notifications".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.fromLTRB(24.h, 11.v, 24.h, 9.v))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return SizedBox(height: 39.v, width: double.maxFinite, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.onPrimaryContainer, labelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w400), unselectedLabelColor: appTheme.gray500, unselectedLabelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w400), indicatorColor: theme.colorScheme.onPrimaryContainer, tabs: [Tab(child: Text("lbl_songs".tr)), Tab(child: Text("lbl_podcasts".tr))])); } 

/// Navigates to the previous screen.
onTapArrowDown(BuildContext context) { NavigatorService.goBack(); } 
 }
