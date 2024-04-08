import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import 'chipviewfull2_item_model.dart';

/// This class defines the variables used in the [iphone_14_pro_max_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone14ProMaxTwoModel extends Equatable {
  Iphone14ProMaxTwoModel(
      {this.dropdownItemList = const [],
      this.chipviewfull2ItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  List<Chipviewfull2ItemModel> chipviewfull2ItemList;

  Iphone14ProMaxTwoModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<Chipviewfull2ItemModel>? chipviewfull2ItemList,
  }) {
    return Iphone14ProMaxTwoModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      chipviewfull2ItemList:
          chipviewfull2ItemList ?? this.chipviewfull2ItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, chipviewfull2ItemList];
}
