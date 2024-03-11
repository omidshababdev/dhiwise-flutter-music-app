import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/set_fingerprint_screen/models/set_fingerprint_model.dart';part 'set_fingerprint_event.dart';part 'set_fingerprint_state.dart';/// A bloc that manages the state of a SetFingerprint according to the event that is dispatched to it.
class SetFingerprintBloc extends Bloc<SetFingerprintEvent, SetFingerprintState> {SetFingerprintBloc(SetFingerprintState initialState) : super(initialState) { on<SetFingerprintInitialEvent>(_onInitialize); }

_onInitialize(SetFingerprintInitialEvent event, Emitter<SetFingerprintState> emit, ) async  { NavigatorService.pushNamed(AppRoutes.followArtistsScreen, );NavigatorService.pushNamed(AppRoutes.homeContainerScreen, ); } 
 }
