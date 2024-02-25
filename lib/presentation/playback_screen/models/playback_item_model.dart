// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [playback_item_widget] screen.
class PlaybackItemModel extends Equatable {PlaybackItemModel({this.automix, this.allowsSeamless, this.isSelectedSwitch, this.id, }) { automix = automix  ?? "Automix";allowsSeamless = allowsSeamless  ?? "Allows seamless transitions between songs on select playlists.";isSelectedSwitch = isSelectedSwitch  ?? false;id = id  ?? ""; }

String? automix;

String? allowsSeamless;

bool? isSelectedSwitch;

String? id;

PlaybackItemModel copyWith({String? automix, String? allowsSeamless, bool? isSelectedSwitch, String? id, }) { return PlaybackItemModel(
automix : automix ?? this.automix,
allowsSeamless : allowsSeamless ?? this.allowsSeamless,
isSelectedSwitch : isSelectedSwitch ?? this.isSelectedSwitch,
id : id ?? this.id,
); } 
@override List<Object?> get props => [automix,allowsSeamless,isSelectedSwitch,id];
 }
