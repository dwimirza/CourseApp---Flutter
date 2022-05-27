class Material {
  final String number;
  final String title;
  final String duration;
  // final List<Lesson> lessons;

  Material(this.number, this.title, this.duration);
}

class Lesson {
  final String title;
  final String duration;

  Lesson(this.title, this.duration);
}

var dataMaterial = [
  Material(
    "1",
    'Before You Start',
    '30 Min',

  ),
  Material(
    "2",
    'Basic Photography',
    '30 Min',
  ),
  Material(
    "3",
    'Angle',
    '45 Min',
  ),
  Material(
    "4",
    'Lightroom',
    '30 Min',
  ),
];
class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course({ 
      required this.author,
      required this.authorImg,
      required this.title,
      required this.imageUrl
      });
  static List<Course> generateCourses() {
    return [
      Course(author: 'John Doe', authorImg: 'assets/profile1.jpg', title: 'Photography Course', imageUrl: 'assets/fotografi.jpg'),
      Course(author: 'Blake', authorImg: 'assets/nanda.jpeg', title: 'Leadership Course', imageUrl: 'assets/leadership.jpg'),
    ];
  }
}

