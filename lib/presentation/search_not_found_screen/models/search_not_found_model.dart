// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'searchnotfound_item_model.dart';/// This class defines the variables used in the [search_not_found_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchNotFoundModel extends Equatable {SearchNotFoundModel({this.searchnotfoundItemList = const []}) {  }

List<SearchnotfoundItemModel> searchnotfoundItemList;

SearchNotFoundModel copyWith({List<SearchnotfoundItemModel>? searchnotfoundItemList}) { return SearchNotFoundModel(
searchnotfoundItemList : searchnotfoundItemList ?? this.searchnotfoundItemList,
); } 
@override List<Object?> get props => [searchnotfoundItemList];
 }
