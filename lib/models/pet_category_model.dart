class PetCategoryModel{
  String name;
  String? urlPath;
  PetCategoryModel({required this.name,this.urlPath});

  static List<PetCategoryModel> generatedPetCategory(){
    return [
      PetCategoryModel(name: 'Cat', urlPath: 'assets/images/cat1.jpg'),
      PetCategoryModel(name: 'Rabbit', urlPath: 'assets/images/rabbit.jpg'),
      PetCategoryModel(name: 'Dog', urlPath: 'assets/images/dog1.jpg'),
      PetCategoryModel(name: 'Sugar glider', urlPath: 'assets/images/sugar.jpg'),
    ];
  }
}