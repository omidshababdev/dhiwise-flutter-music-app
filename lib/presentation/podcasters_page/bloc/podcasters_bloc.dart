import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/podcasterslist_item_model.dart';
import 'package:dhiwise_flutter_music_app/presentation/podcasters_page/models/podcasters_model.dart';
part 'podcasters_event.dart';
part 'podcasters_state.dart';

/// A bloc that manages the state of a Podcasters according to the event that is dispatched to it.
class PodcastersBloc extends Bloc<PodcastersEvent, PodcastersState> {
  PodcastersBloc(PodcastersState initialState) : super(initialState) {
    on<PodcastersInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PodcastersInitialEvent event,
    Emitter<PodcastersState> emit,
  ) async {
    emit(state.copyWith(
        podcastersModelObj: state.podcastersModelObj?.copyWith(
      podcasterslistItemList: fillPodcasterslistItemList(),
    )));
  }

  List<PodcasterslistItemModel> fillPodcasterslistItemList() {
    return [
      PodcasterslistItemModel(
          image: ImageConstant.imgImage80x80,
          artistName: "The Jordan Harbinger Show",
          episodesCounter: "692 Episodes"),
      PodcasterslistItemModel(
          image: ImageConstant.imgImage80x80,
          artistName: "Invest Like The Best",
          episodesCounter: "493 Episodes"),
      PodcasterslistItemModel(
          image: ImageConstant.imgImage95,
          artistName: "The Breakfast Club",
          episodesCounter: "682 Episodes"),
      PodcasterslistItemModel(
          image: ImageConstant.imgImage80x80,
          artistName: "What a Day",
          episodesCounter: "934 Episodes"),
      PodcasterslistItemModel(
          image: ImageConstant.imgImage97,
          artistName: "SaaS & Scotch",
          episodesCounter: "837 Episodes")
    ];
  }
}
