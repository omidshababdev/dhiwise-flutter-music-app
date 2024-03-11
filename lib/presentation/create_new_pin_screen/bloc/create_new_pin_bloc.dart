import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/create_new_pin_screen/models/create_new_pin_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'create_new_pin_event.dart';part 'create_new_pin_state.dart';/// A bloc that manages the state of a CreateNewPin according to the event that is dispatched to it.
class CreateNewPinBloc extends Bloc<CreateNewPinEvent, CreateNewPinState> with  CodeAutoFill {CreateNewPinBloc(CreateNewPinState initialState) : super(initialState) { on<CreateNewPinInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<CreateNewPinState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(CreateNewPinInitialEvent event, Emitter<CreateNewPinState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
