import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/artists_tab_container_screen/models/artists_tab_container_model.dart';part 'artists_tab_container_event.dart';part 'artists_tab_container_state.dart';/// A bloc that manages the state of a ArtistsTabContainer according to the event that is dispatched to it.
class ArtistsTabContainerBloc extends Bloc<ArtistsTabContainerEvent, ArtistsTabContainerState> {ArtistsTabContainerBloc(ArtistsTabContainerState initialState) : super(initialState) { on<ArtistsTabContainerInitialEvent>(_onInitialize); }

_onInitialize(ArtistsTabContainerInitialEvent event, Emitter<ArtistsTabContainerState> emit, ) async  {  } 
 }
