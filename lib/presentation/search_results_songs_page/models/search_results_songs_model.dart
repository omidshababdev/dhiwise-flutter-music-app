// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'searchresultssongs_item_model.dart';/// This class defines the variables used in the [search_results_songs_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultsSongsModel extends Equatable {SearchResultsSongsModel({this.searchresultssongsItemList = const []}) {  }

List<SearchresultssongsItemModel> searchresultssongsItemList;

SearchResultsSongsModel copyWith({List<SearchresultssongsItemModel>? searchresultssongsItemList}) { return SearchResultsSongsModel(
searchresultssongsItemList : searchresultssongsItemList ?? this.searchresultssongsItemList,
); } 
@override List<Object?> get props => [searchresultssongsItemList];
 }
