// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'playlistdetailslist_item_model.dart';/// This class defines the variables used in the [playlist_details_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlaylistDetailsOneModel extends Equatable {PlaylistDetailsOneModel({this.playlistdetailslistItemList = const []}) {  }

List<PlaylistdetailslistItemModel> playlistdetailslistItemList;

PlaylistDetailsOneModel copyWith({List<PlaylistdetailslistItemModel>? playlistdetailslistItemList}) { return PlaylistDetailsOneModel(
playlistdetailslistItemList : playlistdetailslistItemList ?? this.playlistdetailslistItemList,
); } 
@override List<Object?> get props => [playlistdetailslistItemList];
 }
