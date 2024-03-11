// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'songplayoverscreen_item_model.dart';/// This class defines the variables used in the [song_play_over_screen_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SongPlayOverScreenModel extends Equatable {SongPlayOverScreenModel({this.songplayoverscreenItemList = const []}) {  }

List<SongplayoverscreenItemModel> songplayoverscreenItemList;

SongPlayOverScreenModel copyWith({List<SongplayoverscreenItemModel>? songplayoverscreenItemList}) { return SongPlayOverScreenModel(
songplayoverscreenItemList : songplayoverscreenItemList ?? this.songplayoverscreenItemList,
); } 
@override List<Object?> get props => [songplayoverscreenItemList];
 }
