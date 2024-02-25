// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'fiftysixsection_item_model.dart';import 'followingsection_item_model.dart';/// This class defines the variables used in the [search_result_profile_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultProfileModel extends Equatable {SearchResultProfileModel({this.fiftysixsectionItemList = const [], this.followingsectionItemList = const [], }) {  }

List<FiftysixsectionItemModel> fiftysixsectionItemList;

List<FollowingsectionItemModel> followingsectionItemList;

SearchResultProfileModel copyWith({List<FiftysixsectionItemModel>? fiftysixsectionItemList, List<FollowingsectionItemModel>? followingsectionItemList, }) { return SearchResultProfileModel(
fiftysixsectionItemList : fiftysixsectionItemList ?? this.fiftysixsectionItemList,
followingsectionItemList : followingsectionItemList ?? this.followingsectionItemList,
); } 
@override List<Object?> get props => [fiftysixsectionItemList,followingsectionItemList];
 }
