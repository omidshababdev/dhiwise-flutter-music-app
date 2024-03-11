// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'trendingnowframe_item_model.dart';import 'artistsframe_item_model.dart';import 'topchartslist_item_model.dart';/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {HomeModel({this.trendingnowframeItemList = const [], this.artistsframeItemList = const [], this.topchartslistItemList = const [], }) {  }

List<TrendingnowframeItemModel> trendingnowframeItemList;

List<ArtistsframeItemModel> artistsframeItemList;

List<TopchartslistItemModel> topchartslistItemList;

HomeModel copyWith({List<TrendingnowframeItemModel>? trendingnowframeItemList, List<ArtistsframeItemModel>? artistsframeItemList, List<TopchartslistItemModel>? topchartslistItemList, }) { return HomeModel(
trendingnowframeItemList : trendingnowframeItemList ?? this.trendingnowframeItemList,
artistsframeItemList : artistsframeItemList ?? this.artistsframeItemList,
topchartslistItemList : topchartslistItemList ?? this.topchartslistItemList,
); } 
@override List<Object?> get props => [trendingnowframeItemList,artistsframeItemList,topchartslistItemList];
 }
