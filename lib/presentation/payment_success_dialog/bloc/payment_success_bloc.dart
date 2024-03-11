import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:dhiwise_flutter_music_app/presentation/payment_success_dialog/models/payment_success_model.dart';
part 'payment_success_event.dart';
part 'payment_success_state.dart';

/// A bloc that manages the state of a PaymentSuccess according to the event that is dispatched to it.
class PaymentSuccessBloc
    extends Bloc<PaymentSuccessEvent, PaymentSuccessState> {
  PaymentSuccessBloc(PaymentSuccessState initialState) : super(initialState) {
    on<PaymentSuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PaymentSuccessInitialEvent event,
    Emitter<PaymentSuccessState> emit,
  ) async {}
}
