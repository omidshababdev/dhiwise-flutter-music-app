// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'songs_item_model.dart';/// This class defines the variables used in the [songs_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SongsModel extends Equatable {SongsModel({this.songsItemList = const []}) {  }

List<SongsItemModel> songsItemList;

SongsModel copyWith({List<SongsItemModel>? songsItemList}) { return SongsModel(
songsItemList : songsItemList ?? this.songsItemList,
); } 
@override List<Object?> get props => [songsItemList];
 }
