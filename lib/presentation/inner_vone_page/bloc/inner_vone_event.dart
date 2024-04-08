part of 'inner_vone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InnerVone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class InnerVoneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the InnerVone widget is first created.
class InnerVoneInitialEvent extends InnerVoneEvent {
  @override
  List<Object?> get props => [];
}
