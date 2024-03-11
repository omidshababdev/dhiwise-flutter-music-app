import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/downloadedlist_item_model.dart';
import 'package:dhiwise_flutter_music_app/presentation/downloaded_page/models/downloaded_model.dart';
part 'downloaded_event.dart';
part 'downloaded_state.dart';

/// A bloc that manages the state of a Downloaded according to the event that is dispatched to it.
class DownloadedBloc extends Bloc<DownloadedEvent, DownloadedState> {
  DownloadedBloc(DownloadedState initialState) : super(initialState) {
    on<DownloadedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DownloadedInitialEvent event,
    Emitter<DownloadedState> emit,
  ) async {
    emit(state.copyWith(
        downloadedModelObj: state.downloadedModelObj?.copyWith(
      downloadedlistItemList: fillDownloadedlistItemList(),
    )));
  }

  List<DownloadedlistItemModel> fillDownloadedlistItemList() {
    return [
      DownloadedlistItemModel(
          image: ImageConstant.imgImage80x80,
          podcastTitle: "837: Tristan Harris | Reclaiming Our Future with ...",
          author: "Apple Talk",
          text: "|",
          time: "48:26 mins",
          image1: ImageConstant.imgFavorite),
      DownloadedlistItemModel(
          image: ImageConstant.imgImage73,
          podcastTitle: "593: Dallas Taylor | The Psychology of Sound Design",
          author: "What a Day",
          text: "|",
          time: "56:42 mins",
          image1: ImageConstant.imgFavoriteOnprimarycontainer),
      DownloadedlistItemModel(
          image: ImageConstant.imgImage80x80,
          podcastTitle: "837: Tristan Harris | Reclaiming Our Future with ...",
          author: "Apple Talk",
          text: "|",
          time: "48:26 mins",
          image1: ImageConstant.imgFavorite),
      DownloadedlistItemModel(
          image: ImageConstant.imgImage73,
          podcastTitle: "593: Dallas Taylor | The Psychology of Sound Design",
          author: "What a Day",
          text: "|",
          time: "56:42 mins",
          image1: ImageConstant.imgFavoriteOnprimarycontainer)
    ];
  }
}
