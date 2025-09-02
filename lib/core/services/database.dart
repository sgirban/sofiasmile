// import 'dart:io';
// import 'package:drift/native.dart';
// import 'package:path/path.dart' as p;
// import 'package:drift/drift.dart';
// import 'package:path_provider/path_provider.dart';

// part 'database.g.dart';

// @DriftDatabase(tables: [])
// class AppDatabase extends _$AppDatabase {
//   AppDatabase() : super(_openConnection());
//   @override
//   int get schemaVersion => 1;
// }

// LazyDatabase _openConnection() {
//   return LazyDatabase(() async {
//     final dir = await getApplicationSupportDirectory();
//     final dbFile = File(p.join(dir.path, 'dentist.db'));
//     return NativeDatabase.createInBackground(dbFile);
//   });
// }
