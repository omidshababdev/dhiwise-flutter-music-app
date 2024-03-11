import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/songsnotifications_item_model.dart';
import 'package:dhiwise_flutter_music_app/presentation/songs_notifications_page/models/songs_notifications_model.dart';
part 'songs_notifications_event.dart';
part 'songs_notifications_state.dart';

/// A bloc that manages the state of a SongsNotifications according to the event that is dispatched to it.
class SongsNotificationsBloc
    extends Bloc<SongsNotificationsEvent, SongsNotificationsState> {
  SongsNotificationsBloc(SongsNotificationsState initialState)
      : super(initialState) {
    on<SongsNotificationsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SongsNotificationsInitialEvent event,
    Emitter<SongsNotificationsState> emit,
  ) async {
    emit(state.copyWith(
        songsNotificationsModelObj: state.songsNotificationsModelObj?.copyWith(
      songsnotificationsItemList: fillSongsnotificationsItemList(),
    )));
  }

  List<SongsnotificationsItemModel> fillSongsnotificationsItemList() {
    return [
      SongsnotificationsItemModel(
          today: ImageConstant.imgImage80x80,
          today1: "Today",
          text: "|",
          time: "04:36 mins",
          breakmysoul: "BREAK MY SOUL",
          beyonce: "Beyonce",
          text1: "|",
          album: "Album",
          today2: ImageConstant.imgVectorGray90001)
    ];
  }
}
