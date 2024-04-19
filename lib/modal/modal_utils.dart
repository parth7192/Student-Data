class Data {
  String student_name;
  String student_grid;
  String student_standard;
  String student_image;

  Data({
    required this.student_name,
    required this.student_grid,
    required this.student_standard,
    required this.student_image,
  });

  factory Data.fromMap(Map<String, dynamic> data) {
    return Data(
      student_name: data['name'],
      student_grid: data['grid'],
      student_standard: data['standard'],
      student_image: data['image'],
    );
  }
}
