import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/data_saver_storage_screen/models/data_saver_storage_model.dart';part 'data_saver_storage_event.dart';part 'data_saver_storage_state.dart';/// A bloc that manages the state of a DataSaverStorage according to the event that is dispatched to it.
class DataSaverStorageBloc extends Bloc<DataSaverStorageEvent, DataSaverStorageState> {DataSaverStorageBloc(DataSaverStorageState initialState) : super(initialState) { on<DataSaverStorageInitialEvent>(_onInitialize); on<ChangeSwitchEvent>(_changeSwitch); on<ChangeSwitch1Event>(_changeSwitch1); on<ChangeSwitch2Event>(_changeSwitch2); }

_changeSwitch(ChangeSwitchEvent event, Emitter<DataSaverStorageState> emit, ) { emit(state.copyWith(isSelectedSwitch: event.value)); } 
_changeSwitch1(ChangeSwitch1Event event, Emitter<DataSaverStorageState> emit, ) { emit(state.copyWith(isSelectedSwitch1: event.value)); } 
_changeSwitch2(ChangeSwitch2Event event, Emitter<DataSaverStorageState> emit, ) { emit(state.copyWith(isSelectedSwitch2: event.value)); } 
_onInitialize(DataSaverStorageInitialEvent event, Emitter<DataSaverStorageState> emit, ) async  { emit(state.copyWith(isSelectedSwitch: false, isSelectedSwitch1: false, isSelectedSwitch2: false)); } 
 }
