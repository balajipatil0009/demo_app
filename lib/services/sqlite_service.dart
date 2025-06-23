// lib/services/sqlite_service.dart

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter_desktop_app/models/form_data.dart';

class SQLiteService {
  static final SQLiteService _instance = SQLiteService._internal();
  factory SQLiteService() => _instance;
  SQLiteService._internal();

  static Database? _database;

  // STEP 1: Define the new database version.
  static const _databaseVersion = 2;
  static const _databaseName = 'forms_database.db';

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDb();
    return _database!;
  }

  Future<Database> _initDb() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(
      path,
      // STEP 2: Use the new version number and add the onUpgrade callback.
      version: _databaseVersion,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade, // This is the crucial part for migration.
    );
  }

  // STEP 3: This function is for BRAND NEW users.
  // It must create the database with the FINAL, correct schema.
  void _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE applicationData(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        formType TEXT,
        submissionDate TEXT,
        status TEXT,
        referenceNo TEXT,
        applicationDate TEXT,
        aadharNumber TEXT,
        fullNameApplicant TEXT,
        gender TEXT,
        dobApplicant TEXT,
        pobApplicant TEXT,
        houseNoApplicant TEXT,
        buildingNameApplicant TEXT,
        societyComplexApplicant TEXT,
        streetNameApplicant TEXT,
        districtApplicant TEXT,
        talukaApplicant TEXT,
        pincodeApplicant TEXT,
        yearsAtAddressApplicant TEXT,
        mobile TEXT, -- CORRECTED: Replaced 'emailApplicant' with 'mobile'
        fullNameBeneficiary TEXT,
        relationshipBeneficiary TEXT,
        dobBeneficiary TEXT,
        pobBeneficiary TEXT,
        houseNoBeneficiary TEXT,
        buildingNameBeneficiary TEXT,
        societyComplexApplicant TEXT,
        streetNameBeneficiary TEXT,
        districtBeneficiary TEXT,
        talukaBeneficiary TEXT,
        pincodeBeneficiary TEXT,
        livingYearsBeneficiary TEXT,
        maharashtraResidencePeriod TEXT,
        certificatePurpose TEXT
      )
    ''');

    // This table seems correct already, so no changes are needed here.
    await db.execute('''
      CREATE TABLE form2Data(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        formType TEXT,
        submissionDate TEXT,
        status TEXT,
        signatureNo TEXT,
        applicationDate TEXT,
        aadhaarNumber TEXT,
        fullNameApplicant TEXT,
        gender TEXT,
        dobApplicant TEXT,
        pobApplicant TEXT,
        houseNo TEXT,
        society TEXT,
        road TEXT,
        district TEXT,
        taluka TEXT,
        village TEXT,
        mobile TEXT,
        email TEXT,
        profession TEXT,
        panNumber TEXT,
        familyMembersJson TEXT,
        fullNameBeneficiary TEXT,
        relationshipBeneficiary TEXT,
        certificatePurpose TEXT
      )
    ''');
  }

  // STEP 4: This function runs ONLY for EXISTING users who have an older database version.
  // It safely MODIFIES their existing tables without deleting data.
  Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
    // This code will run if the user has version 1 and the app now requires version 2.
    if (oldVersion < 2) {
      print("Upgrading database from version $oldVersion to $newVersion...");

      // The command to add the new 'mobile' column to the existing 'applicationData' table.
      // "NOT NULL DEFAULT ''" ensures existing rows get a valid empty string value.
      await db.execute(
          "ALTER TABLE applicationData ADD COLUMN mobile TEXT NOT NULL DEFAULT ''");

      // If you had also removed 'emailApplicant' and wanted to be tidy,
      // it's complex. For now, the safest route is to just add 'mobile'.
      // The old 'emailApplicant' column will remain in the client's DB but will be ignored
      // by your new Dart code, which is perfectly safe.

      print("Database upgraded successfully.");
    }
  }

  // --- Methods for ApplicationData (Form 1) ---
  Future<int> saveApplicationData(ApplicationData data) async {
    final db = await database;
    return await db.insert('applicationData', data.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<ApplicationData?> getApplicationData(int id) async {
    final db = await database;
    final List<Map<String, dynamic>> maps =
        await db.query('applicationData', where: 'id = ?', whereArgs: [id]);
    if (maps.isNotEmpty) return ApplicationData.fromMap(maps.first);
    return null;
  }

  Future<void> deleteApplicationData(int id) async {
    final db = await database;
    await db.delete('applicationData', where: 'id = ?', whereArgs: [id]);
  }

  // --- Methods for Form2Data (Form 2) ---
  Future<int> saveForm2Data(Form2Data data) async {
    final db = await database;
    return await db.insert('form2Data', data.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<Form2Data?> getForm2Data(int id) async {
    final db = await database;
    final List<Map<String, dynamic>> maps =
        await db.query('form2Data', where: 'id = ?', whereArgs: [id]);
    if (maps.isNotEmpty) return Form2Data.fromMap(maps.first);
    return null;
  }

  Future<void> deleteForm2Data(int id) async {
    final db = await database;
    await db.delete('form2Data', where: 'id = ?', whereArgs: [id]);
  }

  // --- Method to get ALL forms of any type ---
  Future<List<BaseFormData>> getAllForms() async {
    final db = await database;
    final List<Map<String, dynamic>> appDataMaps =
        await db.query('applicationData');
    final List<Map<String, dynamic>> form2DataMaps =
        await db.query('form2Data');

    List<BaseFormData> allForms = [];
    allForms.addAll(appDataMaps.map((map) => ApplicationData.fromMap(map)));
    allForms.addAll(form2DataMaps.map((map) => Form2Data.fromMap(map)));

    allForms.sort((a, b) => b.submissionDate.compareTo(a.submissionDate));
    return allForms;
  }
}
