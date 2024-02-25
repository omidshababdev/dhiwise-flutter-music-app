import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/queue_item_model.dart';
import 'package:dhiwise_flutter_music_app/presentation/queue_page/models/queue_model.dart';
part 'queue_event.dart';
part 'queue_state.dart';

/// A bloc that manages the state of a Queue according to the event that is dispatched to it.
class QueueBloc extends Bloc<QueueEvent, QueueState> {
  QueueBloc(QueueState initialState) : super(initialState) {
    on<QueueInitialEvent>(_onInitialize);
  }

  _onInitialize(
    QueueInitialEvent event,
    Emitter<QueueState> emit,
  ) async {
    emit(state.copyWith(
        queueModelObj: state.queueModelObj?.copyWith(
      queueItemList: fillQueueItemList(),
    )));
  }

  List<QueueItemModel> fillQueueItemList() {
    return [
      QueueItemModel(
          image: ImageConstant.imgImage80x80,
          podcastTitle: "837: Tristan Harris | Reclaiming Our Future with ...",
          author: "Apple Talk",
          text: "|",
          time: "48:26 mins",
          image1: ImageConstant.imgFavorite,
          image2: ImageConstant.imgCategoriesPlaylist,
          appleTalk: ImageConstant.imgIconlyLightOutlineArrowGray90001),
      QueueItemModel(
          image: ImageConstant.imgImage73,
          podcastTitle: "593: Dallas Taylor | The Psychology of Sound Design",
          author: "What a Day",
          text: "|",
          time: "56:42 mins",
          image1: ImageConstant.imgFavoriteOnprimarycontainer,
          image2: ImageConstant.imgCheckmarkOnprimarycontainer20x20),
      QueueItemModel(
          image: ImageConstant.imgImage80x80,
          podcastTitle: "837: Tristan Harris | Reclaiming Our Future with ...",
          author: "Apple Talk",
          text: "|",
          time: "48:26 mins",
          image1: ImageConstant.imgFavorite,
          image2: ImageConstant.imgCategoriesPlaylist,
          appleTalk: ImageConstant.imgIconlyLightOutlineArrowGray90001),
      QueueItemModel(
          image: ImageConstant.imgImage73,
          podcastTitle: "593: Dallas Taylor | The Psychology of Sound Design",
          author: "What a Day",
          text: "|",
          time: "56:42 mins",
          image1: ImageConstant.imgFavoriteOnprimarycontainer,
          image2: ImageConstant.imgCheckmarkOnprimarycontainer20x20,
          appleTalk: ImageConstant.imgIconlyLightOutlineArrowGray90001)
    ];
  }
}
