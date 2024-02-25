import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/playlists_screen/models/playlists_model.dart';part 'playlists_event.dart';part 'playlists_state.dart';/// A bloc that manages the state of a Playlists according to the event that is dispatched to it.
class PlaylistsBloc extends Bloc<PlaylistsEvent, PlaylistsState> {PlaylistsBloc(PlaylistsState initialState) : super(initialState) { on<PlaylistsInitialEvent>(_onInitialize); }

_onInitialize(PlaylistsInitialEvent event, Emitter<PlaylistsState> emit, ) async  {  } 
 }
