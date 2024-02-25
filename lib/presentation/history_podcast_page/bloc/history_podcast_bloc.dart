import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/historypodcast_item_model.dart';
import 'package:dhiwise_flutter_music_app/presentation/history_podcast_page/models/history_podcast_model.dart';
part 'history_podcast_event.dart';
part 'history_podcast_state.dart';

/// A bloc that manages the state of a HistoryPodcast according to the event that is dispatched to it.
class HistoryPodcastBloc
    extends Bloc<HistoryPodcastEvent, HistoryPodcastState> {
  HistoryPodcastBloc(HistoryPodcastState initialState) : super(initialState) {
    on<HistoryPodcastInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HistoryPodcastInitialEvent event,
    Emitter<HistoryPodcastState> emit,
  ) async {
    emit(state.copyWith(
        historyPodcastModelObj: state.historyPodcastModelObj?.copyWith(
      historypodcastItemList: fillHistorypodcastItemList(),
    )));
  }

  List<HistorypodcastItemModel> fillHistorypodcastItemList() {
    return [
      HistorypodcastItemModel(
          image: ImageConstant.imgImage80x80,
          podcastTitle: "837: Tristan Harris | Reclaiming Our Future with ...",
          author: "Apple Talk",
          text: "|",
          time: "48:26 mins",
          image1: ImageConstant.imgFavorite),
      HistorypodcastItemModel(
          image: ImageConstant.imgImage73,
          podcastTitle: "593: Dallas Taylor | The Psychology of Sound Design",
          author: "What a Day",
          text: "|",
          time: "56:42 mins",
          image1: ImageConstant.imgFavoriteOnprimarycontainer)
    ];
  }
}
