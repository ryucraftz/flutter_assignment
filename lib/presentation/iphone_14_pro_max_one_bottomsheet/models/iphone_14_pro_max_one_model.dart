import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import 'chipviewfull_item_model.dart';

/// This class defines the variables used in the [iphone_14_pro_max_one_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone14ProMaxOneModel extends Equatable {
  Iphone14ProMaxOneModel(
      {this.dropdownItemList = const [], this.chipviewfullItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  List<ChipviewfullItemModel> chipviewfullItemList;

  Iphone14ProMaxOneModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<ChipviewfullItemModel>? chipviewfullItemList,
  }) {
    return Iphone14ProMaxOneModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      chipviewfullItemList: chipviewfullItemList ?? this.chipviewfullItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, chipviewfullItemList];
}
