import 'package:flutter/material.dart';
import 'package:dhiwise_flutter_music_app/core/app_export.dart';
import 'package:dhiwise_flutter_music_app/widgets/custom_search_view.dart';
import 'bloc/search_not_found_bloc.dart';
import 'models/search_not_found_model.dart';
import 'models/searchnotfound_item_model.dart';
import 'widgets/searchnotfound_item_widget.dart';

class SearchNotFoundScreen extends StatelessWidget {
  const SearchNotFoundScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SearchNotFoundBloc>(
      create: (context) => SearchNotFoundBloc(SearchNotFoundState(
        searchNotFoundModelObj: SearchNotFoundModel(),
      ))
        ..add(SearchNotFoundInitialEvent()),
      child: SearchNotFoundScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: BlocSelector<SearchNotFoundBloc, SearchNotFoundState,
                    TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                      controller: searchController,
                      hintText: "lbl_abcdefghijklm2".tr,
                    );
                  },
                ),
              ),
              SizedBox(height: 24.v),
              _buildSearchNotFound(context),
              SizedBox(height: 124.v),
              CustomImageView(
                imagePath: ImageConstant.imgGroup324,
                height: 250.v,
                width: 339.h,
              ),
              SizedBox(height: 39.v),
              Text(
                "lbl_not_found".tr,
                style: theme.textTheme.headlineSmall,
              ),
              SizedBox(height: 13.v),
              Container(
                width: 342.h,
                margin: EdgeInsets.symmetric(horizontal: 42.h),
                child: Text(
                  "msg_sorry_the_keyword".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    height: 1.40,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchNotFound(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 38.v,
        child: BlocSelector<SearchNotFoundBloc, SearchNotFoundState,
            SearchNotFoundModel?>(
          selector: (state) => state.searchNotFoundModelObj,
          builder: (context, searchNotFoundModelObj) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 24.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 12.h,
                );
              },
              itemCount:
                  searchNotFoundModelObj?.searchnotfoundItemList.length ?? 0,
              itemBuilder: (context, index) {
                SearchnotfoundItemModel model =
                    searchNotFoundModelObj?.searchnotfoundItemList[index] ??
                        SearchnotfoundItemModel();
                return SearchnotfoundItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
