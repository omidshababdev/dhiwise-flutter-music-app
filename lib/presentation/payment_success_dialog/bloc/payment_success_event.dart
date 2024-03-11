// ignore_for_file: must_be_immutable

part of 'payment_success_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PaymentSuccess widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PaymentSuccessEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the PaymentSuccess widget is first created.
class PaymentSuccessInitialEvent extends PaymentSuccessEvent {
  @override
  List<Object?> get props => [];
}
