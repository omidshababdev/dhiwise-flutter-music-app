import 'package:flutter/material.dart';import 'package:dhiwise_flutter_music_app/core/app_export.dart';import 'bloc/search_result_album_bloc.dart';import 'models/search_result_album_model.dart';import 'models/searchresultalbum_item_model.dart';import 'widgets/searchresultalbum_item_widget.dart';class SearchResultAlbumPage extends StatefulWidget {const SearchResultAlbumPage({Key? key}) : super(key: key);

@override SearchResultAlbumPageState createState() =>  SearchResultAlbumPageState();

static Widget builder(BuildContext context) { return BlocProvider<SearchResultAlbumBloc>(create: (context) => SearchResultAlbumBloc(SearchResultAlbumState(searchResultAlbumModelObj: SearchResultAlbumModel()))..add(SearchResultAlbumInitialEvent()), child: SearchResultAlbumPage()); } 
 }
class SearchResultAlbumPageState extends State<SearchResultAlbumPage> with  AutomaticKeepAliveClientMixin<SearchResultAlbumPage> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillWhiteA, child: Column(children: [SizedBox(height: 21.v), _buildSearchResultAlbum(context)])))); } 
/// Section Widget
Widget _buildSearchResultAlbum(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: BlocSelector<SearchResultAlbumBloc, SearchResultAlbumState, SearchResultAlbumModel?>(selector: (state) => state.searchResultAlbumModelObj, builder: (context, searchResultAlbumModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 267.v, crossAxisCount: 2, mainAxisSpacing: 12.h, crossAxisSpacing: 12.h), physics: NeverScrollableScrollPhysics(), itemCount: searchResultAlbumModelObj?.searchresultalbumItemList.length ?? 0, itemBuilder: (context, index) {SearchresultalbumItemModel model = searchResultAlbumModelObj?.searchresultalbumItemList[index] ?? SearchresultalbumItemModel(); return SearchresultalbumItemWidget(model, onTapCardBig: () {onTapCardBig(context);});});})); } 
/// Navigates to the albumDetailsScreen when the action is triggered.
onTapCardBig(BuildContext context) { NavigatorService.pushNamed(AppRoutes.albumDetailsScreen, ); } 
 }
