class Questions {
  int id;

  String an1;
  String an2;
  String an3;
  String an4;
  int trueone;
  String image;
  String audio1;
  String audio2;
  String audio3;
  String audio4;

  Questions(
      {required this.id,
      required this.an1,
      required this.an2,
      required this.an3,
      required this.an4,
      required this.trueone,
      required this.image,
      required this.audio1,
      required this.audio2,
      required this.audio3,
      required this.audio4});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'an1': an1,
      'an2': an2,
      'an3': an3,
      'an4': an4,
      'trueone': trueone,
      'image': image,
      'audio1': audio1,
      'audio2': audio2,
      'audio3': audio3,
      'audio4': audio4,
    };
  }
}
