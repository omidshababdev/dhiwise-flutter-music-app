import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/yourlikes_item_model.dart';
import 'package:dhiwise_flutter_music_app/presentation/your_likes_page/models/your_likes_model.dart';
part 'your_likes_event.dart';
part 'your_likes_state.dart';

/// A bloc that manages the state of a YourLikes according to the event that is dispatched to it.
class YourLikesBloc extends Bloc<YourLikesEvent, YourLikesState> {
  YourLikesBloc(YourLikesState initialState) : super(initialState) {
    on<YourLikesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    YourLikesInitialEvent event,
    Emitter<YourLikesState> emit,
  ) async {
    emit(state.copyWith(
        yourLikesModelObj: state.yourLikesModelObj?.copyWith(
      yourlikesItemList: fillYourlikesItemList(),
    )));
  }

  List<YourlikesItemModel> fillYourlikesItemList() {
    return [
      YourlikesItemModel(
          image: ImageConstant.imgImage80x80,
          podcastTitle: "837: Tristan Harris | Reclaiming Our Future with ...",
          author: "Apple Talk",
          text: "|",
          time: "48:26 mins",
          image1: ImageConstant.imgFavorite),
      YourlikesItemModel(
          image: ImageConstant.imgImage73,
          podcastTitle: "593: Dallas Taylor | The Psychology of Sound Design",
          author: "What a Day",
          text: "|",
          time: "56:42 mins",
          image1: ImageConstant.imgFavoriteOnprimarycontainer),
      YourlikesItemModel(
          image: ImageConstant.imgImage80x80,
          podcastTitle: "837: Tristan Harris | Reclaiming Our Future with ...",
          author: "Apple Talk",
          text: "|",
          time: "48:26 mins",
          image1: ImageConstant.imgFavorite),
      YourlikesItemModel(
          image: ImageConstant.imgImage73,
          podcastTitle: "593: Dallas Taylor | The Psychology of Sound Design",
          author: "What a Day",
          text: "|",
          time: "56:42 mins",
          image1: ImageConstant.imgFavoriteOnprimarycontainer)
    ];
  }
}
