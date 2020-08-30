class CountryQueryMutation {
  String getAll(){
    return """
      {
        countries{
          name
        }
      }
    """;
  }
}