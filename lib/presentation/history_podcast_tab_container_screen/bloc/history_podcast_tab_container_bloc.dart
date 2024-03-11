import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/history_podcast_tab_container_screen/models/history_podcast_tab_container_model.dart';part 'history_podcast_tab_container_event.dart';part 'history_podcast_tab_container_state.dart';/// A bloc that manages the state of a HistoryPodcastTabContainer according to the event that is dispatched to it.
class HistoryPodcastTabContainerBloc extends Bloc<HistoryPodcastTabContainerEvent, HistoryPodcastTabContainerState> {HistoryPodcastTabContainerBloc(HistoryPodcastTabContainerState initialState) : super(initialState) { on<HistoryPodcastTabContainerInitialEvent>(_onInitialize); }

_onInitialize(HistoryPodcastTabContainerInitialEvent event, Emitter<HistoryPodcastTabContainerState> emit, ) async  {  } 
 }
