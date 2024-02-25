// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'searchtypekeywordlist_item_model.dart';/// This class defines the variables used in the [search_type_keyword_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchTypeKeywordModel extends Equatable {SearchTypeKeywordModel({this.searchtypekeywordlistItemList = const []}) {  }

List<SearchtypekeywordlistItemModel> searchtypekeywordlistItemList;

SearchTypeKeywordModel copyWith({List<SearchtypekeywordlistItemModel>? searchtypekeywordlistItemList}) { return SearchTypeKeywordModel(
searchtypekeywordlistItemList : searchtypekeywordlistItemList ?? this.searchtypekeywordlistItemList,
); } 
@override List<Object?> get props => [searchtypekeywordlistItemList];
 }
