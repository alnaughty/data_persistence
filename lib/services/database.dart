import 'dart:io';
import 'package:datapresistence/services/database_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';


class DatabaseController {
//  List result;

  DatabaseController(){
    this._();
  }
  _() async {
    if(await this.checkDB()){
//      this.db = await this.open;

    }else{
      //create DB
    }
  }
  Future<bool> checkDB() async {
    Directory directory = await this.getDirectory;
    var dbPath =  this.getPath(directory);
//    bool exists = await databaseExists(dbPath);
//    return exists;
  }

  Future<Directory> get getDirectory async => await getApplicationDocumentsDirectory();

  String getPath(Directory directory) => "$directory/main.db";

//  Future<Database> get open async => await openDatabase(this.getPath(await this.getDirectory));


  DBResult init({@required String tableName, List<String> where}) {
    return DBResult(tableName: tableName, where: where).getResult;
  }
}