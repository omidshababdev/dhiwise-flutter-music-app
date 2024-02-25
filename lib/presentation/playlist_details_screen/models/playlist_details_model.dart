// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'playlistdetails_item_model.dart';/// This class defines the variables used in the [playlist_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlaylistDetailsModel extends Equatable {PlaylistDetailsModel({this.playlistdetailsItemList = const []}) {  }

List<PlaylistdetailsItemModel> playlistdetailsItemList;

PlaylistDetailsModel copyWith({List<PlaylistdetailsItemModel>? playlistdetailsItemList}) { return PlaylistDetailsModel(
playlistdetailsItemList : playlistdetailsItemList ?? this.playlistdetailsItemList,
); } 
@override List<Object?> get props => [playlistdetailsItemList];
 }
