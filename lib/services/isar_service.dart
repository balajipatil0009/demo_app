import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_desktop_app/models/form_data.dart';

class IsarService {
  static late Isar _isar; // Singleton instance of Isar.

  // Initialize Isar database.
  static Future<void> initialize() async {
    // Get the application support directory for storing the database file.
    final dir = await getApplicationSupportDirectory();
    // Open Isar instance with schemas for Form1Data and Form2Data.
    _isar = await Isar.open(
      // Updated to use ApplicationDataSchema
      [ApplicationDataSchema, Form2DataSchema],
      directory: dir.path,
      inspector: true, // Enable Isar Inspector for debugging.
    );
  }

  // Get the Isar instance.
  static Isar get instance => _isar;

  // --- CRUD Operations ---

  // Save (insert or update) an ApplicationData (formerly Form1Data) entry.
  Future<void> saveApplicationData(ApplicationData data) async {
    await _isar.writeTxn(() async {
      await _isar.applicationDatas.put(data); // Using applicationDatas accessor
    });
  }

  // Save (insert or update) a Form2Data entry.
  Future<void> saveForm2Data(Form2Data data) async {
    await _isar.writeTxn(() async {
      await _isar.form2Datas.put(data); // Put handles both insert and update.
    });
  }

  // Get a specific ApplicationData by ID.
  Future<ApplicationData?> getApplicationData(int id) async {
    return await _isar.applicationDatas
        .get(id); // Using applicationDatas accessor
  }

  // Get a specific Form2Data by ID.
  Future<Form2Data?> getForm2Data(int id) async {
    return await _isar.form2Datas.get(id);
  }

  // Get all forms (both ApplicationData and Form2Data) as a list of BaseFormData.
  Future<List<BaseFormData>> getAllForms() async {
    // Fetch all ApplicationData.
    final applicationForms = await _isar.applicationDatas.where().findAll();
    // Fetch all Form2Data.
    final form2s = await _isar.form2Datas.where().findAll();
    // Combine and return.
    return [...applicationForms, ...form2s];
  }

  // Delete an ApplicationData entry.
  Future<void> deleteApplicationData(int id) async {
    await _isar.writeTxn(() async {
      await _isar.applicationDatas
          .delete(id); // Using applicationDatas accessor
    });
  }

  // Delete a Form2Data entry.
  Future<void> deleteForm2Data(int id) async {
    await _isar.writeTxn(() async {
      await _isar.form2Datas.delete(id);
    });
  }
}
