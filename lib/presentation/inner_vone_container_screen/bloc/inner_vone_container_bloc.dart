import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/inner_vone_container_model.dart';
part 'inner_vone_container_event.dart';
part 'inner_vone_container_state.dart';

/// A bloc that manages the state of a InnerVoneContainer according to the event that is dispatched to it.
class InnerVoneContainerBloc
    extends Bloc<InnerVoneContainerEvent, InnerVoneContainerState> {
  InnerVoneContainerBloc(InnerVoneContainerState initialState)
      : super(initialState) {
    on<InnerVoneContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InnerVoneContainerInitialEvent event,
    Emitter<InnerVoneContainerState> emit,
  ) async {}
}
