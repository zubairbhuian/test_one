
import 'package:flutter/material.dart';

class CustromSearchDelegate extends SearchDelegate {
// *SearchTerms
  List<String> searchTerms = [
    'Zubair',
    'Riyaz Khan',
    'Dr. Tarek',
    'Moyaz',
    'Aburayhan',
  ];
// *buildActions
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: const Icon(Icons.clear))
    ];
  }

// *buildLeading
  @override
  buildLeading(BuildContext context) => IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back));
// *buildResults
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuri = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuri.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuri.length,
      itemBuilder: (context, index) {
        var result = matchQuri[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// *buildSuggestions
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuri = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuri.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuri.length,
      itemBuilder: (context, index) {
        var result = matchQuri[index];
        return ListTile(
            title: Text(result),
            onTap: () {
              query = result;
              showResults(context);
            });
      },
    );
  }
}
