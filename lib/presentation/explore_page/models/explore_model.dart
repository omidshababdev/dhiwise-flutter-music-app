// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'explore_item_model.dart';/// This class defines the variables used in the [explore_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreModel extends Equatable {ExploreModel({this.exploreItemList = const []}) {  }

List<ExploreItemModel> exploreItemList;

ExploreModel copyWith({List<ExploreItemModel>? exploreItemList}) { return ExploreModel(
exploreItemList : exploreItemList ?? this.exploreItemList,
); } 
@override List<Object?> get props => [exploreItemList];
 }
