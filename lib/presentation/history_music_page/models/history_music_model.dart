// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'historymusic_item_model.dart';/// This class defines the variables used in the [history_music_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HistoryMusicModel extends Equatable {HistoryMusicModel({this.historymusicItemList = const []}) {  }

List<HistorymusicItemModel> historymusicItemList;

HistoryMusicModel copyWith({List<HistorymusicItemModel>? historymusicItemList}) { return HistoryMusicModel(
historymusicItemList : historymusicItemList ?? this.historymusicItemList,
); } 
@override List<Object?> get props => [historymusicItemList];
 }
