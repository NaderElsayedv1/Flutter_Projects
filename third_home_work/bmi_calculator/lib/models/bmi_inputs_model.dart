class BmiInputsModel {
  String gender;
  double height;
  int weight;
  int age;

  BmiInputsModel({
    this.gender = 'MALE',
    this.height = 170,
    this.weight = 60,
    this.age = 24,
  });

  double bmiCaculate() {
    return weight / ((height / 100) * (height / 100));
  }
}
