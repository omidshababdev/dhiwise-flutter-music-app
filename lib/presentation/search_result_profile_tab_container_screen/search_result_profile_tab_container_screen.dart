import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'package:dhiwise_flutter_music_app/presentation/search_result_album_page/search_result_album_page.dart';
import 'package:dhiwise_flutter_music_app/presentation/search_result_playlist_page/search_result_playlist_page.dart';
import 'package:dhiwise_flutter_music_app/presentation/search_result_profile_page/search_result_profile_page.dart';
import 'package:dhiwise_flutter_music_app/widgets/custom_search_view.dart';
import 'bloc/search_result_profile_tab_container_bloc.dart';
import 'models/search_result_profile_tab_container_model.dart';

class SearchResultProfileTabContainerScreen extends StatefulWidget {
  const SearchResultProfileTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SearchResultProfileTabContainerScreenState createState() =>
      SearchResultProfileTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchResultProfileTabContainerBloc>(
      create: (context) => SearchResultProfileTabContainerBloc(
          SearchResultProfileTabContainerState(
        searchResultProfileTabContainerModelObj:
            SearchResultProfileTabContainerModel(),
      ))
        ..add(SearchResultProfileTabContainerInitialEvent()),
      child: SearchResultProfileTabContainerScreen(),
    );
  }
}

class SearchResultProfileTabContainerScreenState
    extends State<SearchResultProfileTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: BlocSelector<
                    SearchResultProfileTabContainerBloc,
                    SearchResultProfileTabContainerState,
                    TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_jenny".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 24.v),
              _buildTabview(context),
              SizedBox(
                height: 740.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    SearchResultProfilePage.builder(context),
                    SearchResultProfilePage.builder(context),
                    SearchResultAlbumPage.builder(context),
                    SearchResultAlbumPage.builder(context),
                    SearchResultPlaylistPage.builder(context),
                    SearchResultProfilePage.builder(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 38.v,
      width: 633.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: appTheme.whiteA700,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimaryContainer,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.onPrimaryContainer,
          borderRadius: BorderRadius.circular(
            19.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_songs".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_artists".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_albums".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_podcasts".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_playlist".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_profile".tr,
            ),
          ),
        ],
      ),
    );
  }
}
