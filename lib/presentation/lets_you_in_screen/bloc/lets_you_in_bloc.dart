import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/lets_you_in_screen/models/lets_you_in_model.dart';part 'lets_you_in_event.dart';part 'lets_you_in_state.dart';/// A bloc that manages the state of a LetsYouIn according to the event that is dispatched to it.
class LetsYouInBloc extends Bloc<LetsYouInEvent, LetsYouInState> {LetsYouInBloc(LetsYouInState initialState) : super(initialState) { on<LetsYouInInitialEvent>(_onInitialize); }

_onInitialize(LetsYouInInitialEvent event, Emitter<LetsYouInState> emit, ) async  { NavigatorService.pushNamed(AppRoutes.signInScreen, );NavigatorService.pushNamed(AppRoutes.signUpScreen, ); } 
 }
