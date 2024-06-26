import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/swift_cafe_vone_model.dart';
part 'swift_cafe_vone_event.dart';
part 'swift_cafe_vone_state.dart';

/// A bloc that manages the state of a SwiftCafeVone according to the event that is dispatched to it.
class SwiftCafeVoneBloc extends Bloc<SwiftCafeVoneEvent, SwiftCafeVoneState> {
  SwiftCafeVoneBloc(SwiftCafeVoneState initialState) : super(initialState) {
    on<SwiftCafeVoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SwiftCafeVoneInitialEvent event,
    Emitter<SwiftCafeVoneState> emit,
  ) async {
    emit(state.copyWith(
      userNameController: TextEditingController(),
      passwordController: TextEditingController(),
    ));
  }
}
