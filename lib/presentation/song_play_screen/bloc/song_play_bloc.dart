import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/song_play_screen/models/song_play_model.dart';part 'song_play_event.dart';part 'song_play_state.dart';/// A bloc that manages the state of a SongPlay according to the event that is dispatched to it.
class SongPlayBloc extends Bloc<SongPlayEvent, SongPlayState> {SongPlayBloc(SongPlayState initialState) : super(initialState) { on<SongPlayInitialEvent>(_onInitialize); }

_onInitialize(SongPlayInitialEvent event, Emitter<SongPlayState> emit, ) async  {  } 
 }
