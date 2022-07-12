import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;

class Address{
  String _code = "";
  String _street = "";
  String _district = "";
  String _city = "";
  String _state = "";
  int _dd = 0;

  String get code => _code;

  set code(String value) {
    _code = value;
  }

  String get street => _street;

  set street(String value) {
    _street = value;
  }

  int get dd => _dd;

  set dd(int value) {
    _dd = value;
  }

  String get state => _state;

  set state(String value) {
    _state = value;
  }

  String get city => _city;

  set city(String value) {
    _city = value;
  }

  String get district => _district;

  set district(String value) {
    _district = value;
  }

  void searchCode(String code) async{
    var url = Uri.parse("https://ws.apicep.com/cep.json?code="+code);
    var response = await http.get(url);
    var data = jsonDecode(response.body) as Map<String, dynamic>;

    if(data['status'] == 200 && data['ok'] == true){
      this._code = data['code'];
      this._street = data['address'];
      this._city = data['city'];
      this._state = data['state'];
      this._district = data['district'];
    }else{
      this._code = "";
      this._street = "";
      this._city = "";
      this._state = "";
      this._district = "";

    }
    print(this.toString());
  }

  @override
  String toString(){
    return "Code: $_code, Street: $_street, District: $_district, City: $_city, State: $_state";
  }
}