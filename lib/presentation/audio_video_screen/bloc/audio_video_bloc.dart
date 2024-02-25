import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/audio_video_screen/models/audio_video_model.dart';part 'audio_video_event.dart';part 'audio_video_state.dart';/// A bloc that manages the state of a AudioVideo according to the event that is dispatched to it.
class AudioVideoBloc extends Bloc<AudioVideoEvent, AudioVideoState> {AudioVideoBloc(AudioVideoState initialState) : super(initialState) { on<AudioVideoInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); on<ChangeSwitch1Event>(_changeSwitch1); }

_changeSwitch(ChangeSwitchEvent event, Emitter<AudioVideoState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_changeSwitch1(ChangeSwitch1Event event, Emitter<AudioVideoState> emit, ) { emit(state.copyWith(isSelectedSwitch1: event.value)); } 
_onInitialize(AudioVideoInitialEvent event, Emitter<AudioVideoState> emit, ) async  { emit(state.copyWith(isSelectedSwitch: false, isSelectedSwitch1: false)); } 
 }
