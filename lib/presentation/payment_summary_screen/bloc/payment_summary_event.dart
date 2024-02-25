// ignore_for_file: must_be_immutable

part of 'payment_summary_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentSummary widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentSummaryEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PaymentSummary widget is first created.
class PaymentSummaryInitialEvent extends PaymentSummaryEvent {
  @override
  List<Object?> get props => [];
}
