import 'dart:core';

class SearchModel
{
  dynamic searchValue;
  dynamic searchResult;
  SearchModel({this.searchValue,this.searchResult});
  void setSearchValue({required dynamic searchValue}) => searchValue = searchValue;
  void setSearchResult({required dynamic searchResult}) => searchResult = searchResult;
  dynamic getSearchValue() => searchValue;
  dynamic getSearchResult() => searchResult;
}