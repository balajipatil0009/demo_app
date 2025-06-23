// lib/providers/form_provider.dart

import 'package:flutter/material.dart';
import 'package:flutter_desktop_app/models/form_data.dart';
// CHANGE THE SERVICE IMPORT
import 'package:flutter_desktop_app/services/sqlite_service.dart';

class FormProvider with ChangeNotifier {
  List<BaseFormData> _forms = [];
  // CHANGE THE SERVICE INSTANCE
  final SQLiteService _sqliteService = SQLiteService();

  List<BaseFormData> get forms => _forms;

  Future<void> loadForms() async {
    // Call the new service's method
    _forms = await _sqliteService.getAllForms();
    notifyListeners();
  }

  void addForm(BaseFormData form) {
    // This logic can remain the same as saving is handled in the UI
    _forms.add(form);
    notifyListeners();
  }

  Future<void> updateForm(BaseFormData updatedForm) async {
    // First, persist the change to the database.
    // This is the crucial missing step.
    if (updatedForm is ApplicationData) {
      // It's a Form 1, use the appropriate save method.
      await _sqliteService.saveApplicationData(updatedForm);
    } else if (updatedForm is Form2Data) {
      // It's a Form 2, use its save method.
      await _sqliteService.saveForm2Data(updatedForm);
    }

    // After successfully saving to the database, update the state in memory.
    final index = _forms.indexWhere((form) => form.id == updatedForm.id);
    if (index != -1) {
      _forms[index] = updatedForm;
      // Tell the UI to refresh with the updated (and now permanent) data.
      notifyListeners();
    }
  }

  Future<void> deleteForm(BaseFormData form) async {
    // Ensure ID is not null before deleting
    if (form.id == null) return;

    if (form.formType == FormType.form1) {
      await _sqliteService.deleteApplicationData(form.id!);
    } else {
      await _sqliteService.deleteForm2Data(form.id!);
    }
    _forms.removeWhere((f) => f.id == form.id);
    notifyListeners();
  }
}
