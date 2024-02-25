// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'albumdetailslist_item_model.dart';/// This class defines the variables used in the [album_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AlbumDetailsModel extends Equatable {AlbumDetailsModel({this.albumdetailslistItemList = const []}) {  }

List<AlbumdetailslistItemModel> albumdetailslistItemList;

AlbumDetailsModel copyWith({List<AlbumdetailslistItemModel>? albumdetailslistItemList}) { return AlbumDetailsModel(
albumdetailslistItemList : albumdetailslistItemList ?? this.albumdetailslistItemList,
); } 
@override List<Object?> get props => [albumdetailslistItemList];
 }
