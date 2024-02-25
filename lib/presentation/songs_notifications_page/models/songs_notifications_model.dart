// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'songsnotifications_item_model.dart';/// This class defines the variables used in the [songs_notifications_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SongsNotificationsModel extends Equatable {SongsNotificationsModel({this.songsnotificationsItemList = const []}) {  }

List<SongsnotificationsItemModel> songsnotificationsItemList;

SongsNotificationsModel copyWith({List<SongsnotificationsItemModel>? songsnotificationsItemList}) { return SongsNotificationsModel(
songsnotificationsItemList : songsnotificationsItemList ?? this.songsnotificationsItemList,
); } 
@override List<Object?> get props => [songsnotificationsItemList];
 }
