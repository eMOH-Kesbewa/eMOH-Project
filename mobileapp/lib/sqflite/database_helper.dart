// import 'package:mobileapp/services/viewClinicService.dart';
// import 'package:sqflite/sqflite.dart';
// import 'dart:async';
// import 'dart:io';
// import 'package:path_provider/path_provider.dart';
// import 'package:flutter_app/models/Clinic.dart';

// class DatabaseHelper {

// 	static DatabaseHelper _databaseHelper;    // Singleton DatabaseHelper
// 	static Database _database;                // Singleton Database

// 	String ClinicTable = 'Clinic_table';
// 	String colId = 'id';
// 	String colTitle = 'title';
// 	String colDescription = 'description';
// 	String colPriority = 'priority';
// 	String colDate = 'date';

// 	DatabaseHelper._createInstance(); // Named constructor to create instance of DatabaseHelper

// 	factory DatabaseHelper() {

// 		if (_databaseHelper == null) {
// 			_databaseHelper = DatabaseHelper._createInstance(); // This is executed only once, singleton object
// 		}
// 		return _databaseHelper;
// 	}

// 	Future<Database> get database async {

// 		if (_database == null) {
// 			_database = await initializeDatabase();
// 		}
// 		return _database;
// 	}

// 	Future<Database> initializeDatabase() async {
// 		// Get the directory path for both Android and iOS to store database.
// 		Directory directory = await getApplicationDocumentsDirectory();
// 		String path = directory.path + 'Clinics.db';

// 		// Open/create the database at a given path
// 		var ClinicsDatabase = await openDatabase(path, version: 1, onCreate: _createDb);
// 		return ClinicsDatabase;
// 	}

// 	void _createDb(Database db, int newVersion) async {

// 		await db.execute('CREATE TABLE $ClinicTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colTitle TEXT, '
// 				'$colDescription TEXT, $colPriority INTEGER, $colDate TEXT)');
// 	}

// 	// Fetch Operation: Get all Clinic objects from database
// 	Future<List<Map<String, dynamic>>> getClinicMapList() async {
// 		Database db = await this.database;

// //		var result = await db.rawQuery('SELECT * FROM $ClinicTable order by $colPriority ASC');
// 		var result = await db.query(ClinicTable, orderBy: '$colPriority ASC');
// 		return result;
// 	}

// 	// Insert Operation: Insert a Clinic object to database
// 	Future<int> insertClinic(Clinic Clinic) async {
// 		Database db = await this.database;
// 		var result = await db.insert(ClinicTable, Clinic.toMap());
// 		return result;
// 	}

// 	// Update Operation: Update a Clinic object and save it to database
// 	Future<int> updateClinic(Clinic Clinic) async {
// 		var db = await this.database;
// 		var result = await db.update(ClinicTable, Clinic.toMap(), where: '$colId = ?', whereArgs: [Clinic.id]);
// 		return result;
// 	}

// 	// Delete Operation: Delete a Clinic object from database
// 	Future<int> deleteClinic(int id) async {
// 		var db = await this.database;
// 		int result = await db.rawDelete('DELETE FROM $ClinicTable WHERE $colId = $id');
// 		return result;
// 	}

// 	// Get number of Clinic objects in database
// 	Future<int> getCount() async {
// 		Database db = await this.database;
// 		List<Map<String, dynamic>> x = await db.rawQuery('SELECT COUNT (*) from $ClinicTable');
// 		int result = Sqflite.firstIntValue(x);
// 		return result;
// 	}

// 	// Get the 'Map List' [ List<Map> ] and convert it to 'Clinic List' [ List<Clinic> ]
// 	Future<List<Clinic>> getClinicList() async {

// 		var ClinicMapList = await getClinicMapList(); // Get 'Map List' from database
// 		int count = ClinicMapList.length;         // Count the number of map entries in db table

// 		List<Clinic> ClinicList = List<Clinic>();
// 		// For loop to create a 'Clinic List' from a 'Map List'
// 		for (int i = 0; i < count; i++) {
// 			//ClinicList.add(Clinic.fromMapObject(ClinicMapList[i]));
//       ClinicList.add(Clinic.formMapObject(ClinicMapList[i]));
// 		}

// 		return ClinicList;
// 	}

// }







