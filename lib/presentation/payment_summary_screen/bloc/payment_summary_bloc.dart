import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:dhiwise_flutter_music_app/presentation/payment_summary_screen/models/payment_summary_model.dart';part 'payment_summary_event.dart';part 'payment_summary_state.dart';/// A bloc that manages the state of a PaymentSummary according to the event that is dispatched to it.
class PaymentSummaryBloc extends Bloc<PaymentSummaryEvent, PaymentSummaryState> {PaymentSummaryBloc(PaymentSummaryState initialState) : super(initialState) { on<PaymentSummaryInitialEvent>(_onInitialize); }

_onInitialize(PaymentSummaryInitialEvent event, Emitter<PaymentSummaryState> emit, ) async  {  } 
 }
