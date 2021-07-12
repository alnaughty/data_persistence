import 'package:datapresistence/services/database.dart';
import 'package:flutter/material.dart';

class Where {
  String commands(List<String> commands) {
    return commands.join(',').replaceAll(',', '&&');
  }
}

class DBResult extends DatabaseController {
  final String tableName;
  final List<String> where;
  DBResult({@required this.tableName, this.where}) {
    this._();
  }
  _() async {
//    this.result = await db.rawQuery("SELECT * from ${this.tableName} ${where.length > 0 ? "WHERE" + Where().commands(where) : ""}");
  }
  get getResult => this.result;
  List result;
  int get count => result.length;
  List withCommand = [];

  DBResult withData({List<List<String>> fromTBL}) {
    this.withCommand = fromTBL;
    RelationShip();
  }
}

class RelationShip extends DBResult {
  RelationShip(){
    this._();
  }
  _() async {
    result = [];
  }
}