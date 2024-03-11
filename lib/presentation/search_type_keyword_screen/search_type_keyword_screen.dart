import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'package:dhiwise_flutter_music_app/widgets/custom_search_view.dart';
import 'bloc/search_type_keyword_bloc.dart';
import 'models/search_type_keyword_model.dart';
import 'models/searchtypekeywordlist_item_model.dart';
import 'widgets/searchtypekeywordlist_item_widget.dart';

class SearchTypeKeywordScreen extends StatelessWidget {
  const SearchTypeKeywordScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchTypeKeywordBloc>(
      create: (context) => SearchTypeKeywordBloc(SearchTypeKeywordState(
        searchTypeKeywordModelObj: SearchTypeKeywordModel(),
      ))
        ..add(SearchTypeKeywordInitialEvent()),
      child: SearchTypeKeywordScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(24.h),
          child: Column(
            children: [
              BlocSelector<SearchTypeKeywordBloc, SearchTypeKeywordState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_abcdefghijklm".tr,
                    contentPadding: EdgeInsets.only(
                      top: 19.v,
                      right: 30.h,
                      bottom: 19.v,
                    ),
                  );
                },
              ),
              SizedBox(height: 23.v),
              _buildAutoLayoutHorizontalRow(context),
              SizedBox(height: 24.v),
              Divider(),
              SizedBox(height: 23.v),
              _buildSearchTypeKeywordList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAutoLayoutHorizontalRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "lbl_recent_searches".tr,
          style: theme.textTheme.titleLarge,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            "lbl_clear_all".tr,
            style: CustomTextStyles.titleMediumOnPrimaryContainer16,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSearchTypeKeywordList(BuildContext context) {
    return BlocSelector<SearchTypeKeywordBloc, SearchTypeKeywordState,
        SearchTypeKeywordModel?>(
      selector: (state) => state.searchTypeKeywordModelObj,
      builder: (context, searchTypeKeywordModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 25.v,
            );
          },
          itemCount:
              searchTypeKeywordModelObj?.searchtypekeywordlistItemList.length ??
                  0,
          itemBuilder: (context, index) {
            SearchtypekeywordlistItemModel model = searchTypeKeywordModelObj
                    ?.searchtypekeywordlistItemList[index] ??
                SearchtypekeywordlistItemModel();
            return SearchtypekeywordlistItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
