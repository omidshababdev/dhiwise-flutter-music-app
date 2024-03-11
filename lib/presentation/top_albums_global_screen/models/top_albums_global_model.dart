// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'topalbumsgloballist_item_model.dart';/// This class defines the variables used in the [top_albums_global_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TopAlbumsGlobalModel extends Equatable {TopAlbumsGlobalModel({this.topalbumsgloballistItemList = const []}) {  }

List<TopalbumsgloballistItemModel> topalbumsgloballistItemList;

TopAlbumsGlobalModel copyWith({List<TopalbumsgloballistItemModel>? topalbumsgloballistItemList}) { return TopAlbumsGlobalModel(
topalbumsgloballistItemList : topalbumsgloballistItemList ?? this.topalbumsgloballistItemList,
); } 
@override List<Object?> get props => [topalbumsgloballistItemList];
 }
