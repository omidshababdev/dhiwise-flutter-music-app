// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'playback_item_model.dart';/// This class defines the variables used in the [playback_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlaybackModel extends Equatable {PlaybackModel({this.playbackItemList = const []}) {  }

List<PlaybackItemModel> playbackItemList;

PlaybackModel copyWith({List<PlaybackItemModel>? playbackItemList}) { return PlaybackModel(
playbackItemList : playbackItemList ?? this.playbackItemList,
); } 
@override List<Object?> get props => [playbackItemList];
 }
