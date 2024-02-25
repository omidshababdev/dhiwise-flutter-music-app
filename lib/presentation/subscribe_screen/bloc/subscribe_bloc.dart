import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/subscribe_screen/models/subscribe_model.dart';part 'subscribe_event.dart';part 'subscribe_state.dart';/// A bloc that manages the state of a Subscribe according to the event that is dispatched to it.
class SubscribeBloc extends Bloc<SubscribeEvent, SubscribeState> {SubscribeBloc(SubscribeState initialState) : super(initialState) { on<SubscribeInitialEvent>(_onInitialize); }

_onInitialize(SubscribeInitialEvent event, Emitter<SubscribeState> emit, ) async  {  } 
 }
