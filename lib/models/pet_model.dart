class PetModel{
  String name;
  int age;
  String sex;
  double weight;
  String? urlPath;

  PetModel({
    required this.name, 
    required this.age,
    required this.sex,
    required this.weight,
    this.urlPath
  });

  static List<PetModel> generatedPet(){
    return [
      PetModel(name: 'Lucas', age: 3, sex: 'male', weight: 3.5, urlPath: 'assets/images/cat.jpg'),
      PetModel(name: 'Elizabeth', age: 2, sex: 'female', weight: 2.5, urlPath: 'assets/images/dog.jpg'),
    ];
  }
}