import 'package:get/get.dart';

class NotesState {
  RxInt activeTab = 0.obs;

  List<NotesItem> paperOneItems = [
    NotesItem(
      title: 'Examination Overview',
      linkUrl: '17h6F4nP1LKCUXrsP9cGohQUGjiGBgJAq',
    ),
    NotesItem(
      title: 'Algebra',
      linkUrl: '1rOOT4gg2myWLrLLrCV2wr0wmkA5-4YNI',
    ),
    NotesItem(
      title: 'Sequence and Series',
      linkUrl: '1gRJ_IhiADHHI0RohkRgPY728NMom8dqc',
    ),
    NotesItem(
      title: 'Functions',
      linkUrl: '17U8ORc-zv3oheGZccJjeiDdF6vUC6qB5',
    ),
    NotesItem(
      title: 'Financial Mathematics',
      linkUrl: '1smnrOJwMz2cvofaheIKMv3jXJLFRVYFu',
    ),
    NotesItem(
      title: 'Differential Calculus',
      linkUrl: '17JeMOiGWGh_WPGc6hCaBlxwJWm7FhGJ6',
    ),
    NotesItem(
      title: 'Probability',
      linkUrl: '19LvMbOMMLihP3KVYLzHvjSMVB-2-6Yex',
    ),
  ];

  List<NotesItem> paperTwoItems = [
    NotesItem(
      title: 'Examination Overview',
      linkUrl: '17h6F4nP1LKCUXrsP9cGohQUGjiGBgJAq',
    ),
    NotesItem(
      title: 'Statistics',
      linkUrl: '1MXd-zcF8cKbhQmfc3w9VFmQV39-LH8UP',
    ),
    NotesItem(
      title: 'Analytical Geometry',
      linkUrl: '14oa-tvD5QIMPGwDtzulQMcb1FYPiofcZ',
    ),
    NotesItem(
      title: 'Trigonometry',
      linkUrl: '11Y1-2eWq1UhhqJKah-S31OxUUYhx9Ay9',
    ),
    NotesItem(
      title: 'Euclidean Geometry',
      linkUrl: '10DvDp9QIG9pWRAtmOF6OCYvketWRLXV0',
    ),
  ];
}

class NotesItem {
  final String title;
  final String linkUrl;

  NotesItem({required this.title, required this.linkUrl});
}
