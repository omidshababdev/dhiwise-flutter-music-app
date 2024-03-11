import 'package:flutter/material.dart';import 'package:dhiwise_flutter_music_app/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/artists_page/artists_page.dart';import 'package:dhiwise_flutter_music_app/presentation/podcasters_page/podcasters_page.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_leading_image.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_title.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_trailing_iconbutton_one.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/appbar_trailing_image.dart';import 'package:dhiwise_flutter_music_app/widgets/app_bar/custom_app_bar.dart';import 'bloc/artists_tab_container_bloc.dart';import 'models/artists_tab_container_model.dart';class ArtistsTabContainerScreen extends StatefulWidget {const ArtistsTabContainerScreen({Key? key}) : super(key: key);

@override ArtistsTabContainerScreenState createState() =>  ArtistsTabContainerScreenState();

static Widget builder(BuildContext context) { return BlocProvider<ArtistsTabContainerBloc>(create: (context) => ArtistsTabContainerBloc(ArtistsTabContainerState(artistsTabContainerModelObj: ArtistsTabContainerModel()))..add(ArtistsTabContainerInitialEvent()), child: ArtistsTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class ArtistsTabContainerScreenState extends State<ArtistsTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { return BlocBuilder<ArtistsTabContainerBloc, ArtistsTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 24.v), child: Column(children: [_buildTabview(context), SizedBox(height: 831.v, child: TabBarView(controller: tabviewController, children: [ArtistsPage.builder(context), PodcastersPage.builder(context)]))])))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 51.v, leadingWidth: 52.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowDown, margin: EdgeInsets.only(left: 24.h, top: 11.v, bottom: 12.v)), title: AppbarTitle(text: "lbl_artists".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgRewind, margin: EdgeInsets.only(left: 24.h, top: 11.v, right: 12.h)), AppbarTrailingIconbuttonOne(imagePath: ImageConstant.imgSettingsGray90001, margin: EdgeInsets.only(left: 20.h, top: 11.v, right: 36.h))]); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return SizedBox(height: 39.v, width: double.maxFinite, child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: theme.colorScheme.onPrimaryContainer, labelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), unselectedLabelColor: appTheme.gray500, unselectedLabelStyle: TextStyle(fontSize: 18.fSize, fontFamily: 'Urbanist', fontWeight: FontWeight.w600), indicatorColor: theme.colorScheme.onPrimaryContainer, tabs: [Tab(child: Text("lbl_singers".tr)), Tab(child: Text("lbl_podcasters".tr))])); } 
 }
