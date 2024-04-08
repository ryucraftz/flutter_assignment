import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/inner_vone_model.dart';
import '../models/userprofile_item_model.dart';
part 'inner_vone_event.dart';
part 'inner_vone_state.dart';

/// A bloc that manages the state of a InnerVone according to the event that is dispatched to it.
class InnerVoneBloc extends Bloc<InnerVoneEvent, InnerVoneState> {
  InnerVoneBloc(InnerVoneState initialState) : super(initialState) {
    on<InnerVoneInitialEvent>(_onInitialize);
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          username: "Hot Cappuccino",
          coffeeDescripti: "Espresso, Steamed Milk",
          rating: "4.9",
          ratingCount: "(458)"),
      UserprofileItemModel(username: "Hot Cappuccino")
    ];
  }

  _onInitialize(
    InnerVoneInitialEvent event,
    Emitter<InnerVoneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        innerVoneModelObj: state.innerVoneModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
    )));
  }
}
