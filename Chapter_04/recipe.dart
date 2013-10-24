part of recipe_book;

class Recipe {
  String name;
  String category;
  List<String> ingredients;
  String directions;
  int rating;

  Recipe(this.name, this.category, this.ingredients, this.directions,
      this.rating);

  String toJsonString() {
    Map data = {
                "name" : name,
                "category" : category,
                "ingredients" : ingredients,
                "directions" : directions,
                "rating" : rating
    };
    return JSON.encode(data);
  }

  factory Recipe.fromJsonMap(Map json) {
    return new Recipe(json['name'], json['category'], json['ingredients'],
        json['directions'], json['rating']);
  }
}
