import 'package:flutter/material.dart';
import 'package:flutter_desktop_app/models/form_data.dart';
import 'package:flutter_desktop_app/services/isar_service.dart';

// FormProvider extends ChangeNotifier to notify listeners about state changes.
class FormProvider with ChangeNotifier {
  List<BaseFormData> _forms = []; // Private list of forms.
  final IsarService _isarService = IsarService(); // Isar service instance.

  List<BaseFormData> get forms => _forms; // Getter for forms list.

  // Load all forms from Isar database.
  Future<void> loadForms() async {
    _forms = await _isarService.getAllForms();
    notifyListeners(); // Notify listeners that the data has changed.
  }

  // Add a new form to the list and database.
  void addForm(BaseFormData form) {
    _forms.add(form);
    notifyListeners(); // Notify listeners.
    // Saving to Isar is handled within the form pages upon submission.
  }

  // Update an existing form in the list and database.
  void updateForm(BaseFormData updatedForm) {
    final index = _forms.indexWhere((form) => form.id == updatedForm.id);
    if (index != -1) {
      _forms[index] = updatedForm;
      notifyListeners(); // Notify listeners.
      // Updating in Isar is handled within the form pages upon submission.
    }
  }

  // Remove a form from the list and database.
  Future<void> deleteForm(BaseFormData form) async {
    if (form.formType == FormType.form1) {
      await _isarService
          .deleteApplicationData(form.id); // Updated to delete ApplicationData
    } else {
      await _isarService.deleteForm2Data(form.id);
    }
    _forms.removeWhere((f) => f.id == form.id);
    notifyListeners(); // Notify listeners.
  }
}
