// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'searchresultalbum_item_model.dart';/// This class defines the variables used in the [search_result_album_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultAlbumModel extends Equatable {SearchResultAlbumModel({this.searchresultalbumItemList = const []}) {  }

List<SearchresultalbumItemModel> searchresultalbumItemList;

SearchResultAlbumModel copyWith({List<SearchresultalbumItemModel>? searchresultalbumItemList}) { return SearchResultAlbumModel(
searchresultalbumItemList : searchresultalbumItemList ?? this.searchresultalbumItemList,
); } 
@override List<Object?> get props => [searchresultalbumItemList];
 }
