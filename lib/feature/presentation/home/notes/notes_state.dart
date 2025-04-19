import 'package:get/get.dart';

class NotesState {
  RxInt activeTab = 0.obs;

  List<NotesItem> paperOneItems = [
    NotesItem(
      title: 'Nature of Roots',
      linkUrl: '1Apm93oOMhfeJBKa6QdThy_6uD_Fspg-N',
    ),
    NotesItem(
      title: 'Quadratic Equations',
      linkUrl: '1HftZeIvEmfOUD2yHobizN-lkqq9cCbMw',
    ),
    NotesItem(
      title: 'Exponents and Surds ',
      linkUrl: '1CwzG6NUYxVJPz_hpm2JeT8lo8JLpZS3O',
    ),
    NotesItem(
      title: 'Sequences and Series',
      linkUrl: '1zi6LwoIaFX4DhNhCZjqBVkYqXVfD762P',
    ),
    NotesItem(
      title: 'Finance, Growth and Decay',
      linkUrl: '1GUeyss4M6xZg3lqc6GU9HeKvdjXgaACx',
    ),
    NotesItem(
      title: 'Functions, Graphs and Inverses',
      linkUrl: '1ypuNQU8eoLI8up39FJCrUGmvD17upXXn',
    ),
    NotesItem(
      title: 'Differential Calculus',
      linkUrl: '1SMtDLpqS1HUJnKzrob4SlDunS8sR3-Pk',
    ),
    NotesItem(
      title: 'Probability',
      linkUrl: '19LvMbOMMLihP3KVYLzHvjSMVB-2-6Yex',
    ),
  ];

  List<NotesItem> paperTwoItems = [
    NotesItem(
      title: 'Euclidean Geometry',
      linkUrl: '1sN6aYo62XjTPg74QLlhSokuhQMvIrbEm',
    ),
    NotesItem(
      title: 'Trigonometry',
      linkUrl: '1D9OD5nyCHAoY3cl5vGuuJ24uxESNogN3',
    ),
    NotesItem(
      title: 'Analytical Geometry',
      linkUrl: '1zcE2oFK_bdQZFmTMr3zp4ddxm_12bwJV',
    ),
    NotesItem(
      title: 'Statistics',
      linkUrl: '1TL9lV6rw2Jij_ti6-zZLtp6gQUWpj6oe',
    ),
  ];
}

class NotesItem {
  final String title;
  final String linkUrl;

  NotesItem({required this.title, required this.linkUrl});
}
