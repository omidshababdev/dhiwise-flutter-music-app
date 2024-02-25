import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/podcasts_notifications_tab_container_screen/models/podcasts_notifications_tab_container_model.dart';part 'podcasts_notifications_tab_container_event.dart';part 'podcasts_notifications_tab_container_state.dart';/// A bloc that manages the state of a PodcastsNotificationsTabContainer according to the event that is dispatched to it.
class PodcastsNotificationsTabContainerBloc extends Bloc<PodcastsNotificationsTabContainerEvent, PodcastsNotificationsTabContainerState> {PodcastsNotificationsTabContainerBloc(PodcastsNotificationsTabContainerState initialState) : super(initialState) { on<PodcastsNotificationsTabContainerInitialEvent>(_onInitialize); }

_onInitialize(PodcastsNotificationsTabContainerInitialEvent event, Emitter<PodcastsNotificationsTabContainerState> emit, ) async  {  } 
 }
