import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/walkthrough_screen/models/walkthrough_model.dart';part 'walkthrough_event.dart';part 'walkthrough_state.dart';/// A bloc that manages the state of a Walkthrough according to the event that is dispatched to it.
class WalkthroughBloc extends Bloc<WalkthroughEvent, WalkthroughState> {WalkthroughBloc(WalkthroughState initialState) : super(initialState) { on<WalkthroughInitialEvent>(_onInitialize); }

_onInitialize(WalkthroughInitialEvent event, Emitter<WalkthroughState> emit, ) async  {  } 
 }
