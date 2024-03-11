import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/podcast_episode_details_screen/models/podcast_episode_details_model.dart';part 'podcast_episode_details_event.dart';part 'podcast_episode_details_state.dart';/// A bloc that manages the state of a PodcastEpisodeDetails according to the event that is dispatched to it.
class PodcastEpisodeDetailsBloc extends Bloc<PodcastEpisodeDetailsEvent, PodcastEpisodeDetailsState> {PodcastEpisodeDetailsBloc(PodcastEpisodeDetailsState initialState) : super(initialState) { on<PodcastEpisodeDetailsInitialEvent>(_onInitialize); }

_onInitialize(PodcastEpisodeDetailsInitialEvent event, Emitter<PodcastEpisodeDetailsState> emit, ) async  {  } 
 }
