// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'followartistslist_item_model.dart';/// This class defines the variables used in the [follow_artists_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FollowArtistsModel extends Equatable {FollowArtistsModel({this.followartistslistItemList = const []}) {  }

List<FollowartistslistItemModel> followartistslistItemList;

FollowArtistsModel copyWith({List<FollowartistslistItemModel>? followartistslistItemList}) { return FollowArtistsModel(
followartistslistItemList : followartistslistItemList ?? this.followartistslistItemList,
); } 
@override List<Object?> get props => [followartistslistItemList];
 }
