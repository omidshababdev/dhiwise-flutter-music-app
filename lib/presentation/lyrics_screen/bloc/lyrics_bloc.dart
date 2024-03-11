import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/lyrics_screen/models/lyrics_model.dart';part 'lyrics_event.dart';part 'lyrics_state.dart';/// A bloc that manages the state of a Lyrics according to the event that is dispatched to it.
class LyricsBloc extends Bloc<LyricsEvent, LyricsState> {LyricsBloc(LyricsState initialState) : super(initialState) { on<LyricsInitialEvent>(_onInitialize); }

_onInitialize(LyricsInitialEvent event, Emitter<LyricsState> emit, ) async  {  } 
 }
