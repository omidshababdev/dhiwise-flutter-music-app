// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'trendingnow_item_model.dart';/// This class defines the variables used in the [trending_now_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TrendingNowModel extends Equatable {TrendingNowModel({this.trendingnowItemList = const []}) {  }

List<TrendingnowItemModel> trendingnowItemList;

TrendingNowModel copyWith({List<TrendingnowItemModel>? trendingnowItemList}) { return TrendingNowModel(
trendingnowItemList : trendingnowItemList ?? this.trendingnowItemList,
); } 
@override List<Object?> get props => [trendingnowItemList];
 }
