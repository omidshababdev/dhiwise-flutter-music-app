// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'topalbumsglobal_item_model.dart';import 'charts_item_model.dart';/// This class defines the variables used in the [charts_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ChartsModel extends Equatable {ChartsModel({this.topalbumsglobalItemList = const [], this.chartsItemList = const [], }) {  }

List<TopalbumsglobalItemModel> topalbumsglobalItemList;

List<ChartsItemModel> chartsItemList;

ChartsModel copyWith({List<TopalbumsglobalItemModel>? topalbumsglobalItemList, List<ChartsItemModel>? chartsItemList, }) { return ChartsModel(
topalbumsglobalItemList : topalbumsglobalItemList ?? this.topalbumsglobalItemList,
chartsItemList : chartsItemList ?? this.chartsItemList,
); } 
@override List<Object?> get props => [topalbumsglobalItemList,chartsItemList];
 }
