import 'package:bus_rental_keolis/components/app/lifecycle.dart';
import 'package:bus_rental_keolis/components/app/viewmodel.dart';
import 'package:bus_rental_keolis/data/remote/countries/countries_client.dart';
import 'package:bus_rental_keolis/model/Country.dart';
import 'package:bus_rental_keolis/mutation/country_query_mutation.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomeViewModel extends ViewModel {
  BuildContext _context;

  List<Country> listCountries = List<Country>();

  CountriesClient graphQLConfiguration = CountriesClient();

  void load(BuildContext context, List args) async {
    this._context = context;
    setReload(true);
    setLifecycle(OnLoad());
    listCountries = await getCountriesName();
    setLifecycle(OnLoaded());
    print(listCountries.length);
  }

  Future<List> getCountriesName() async {
    CountryQueryMutation queryMutation = CountryQueryMutation();
    GraphQLClient _client = graphQLConfiguration.clientToQuery();
    QueryResult result = await _client.query(
      QueryOptions(
        document: queryMutation.getAll(),
      ),
    );
    if (!result.hasException) {
      for (var i = 0; i < result.data["countries"].length; i++) {
        listCountries.add(
          Country(name: result.data["countries"][i]["name"]),
        );
      }
    }
    return listCountries;
  }
}
