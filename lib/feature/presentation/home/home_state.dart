class HomeState {
  List<HomeMenu> homeMenus = [
    HomeMenu(title: 'IEB', image: 'assets/home/IEB.png'),
    HomeMenu(title: 'Notes', image: 'assets/home/notes.png'),
    HomeMenu(title: 'Quiz Tests', image: 'assets/home/quiz.png'),
    HomeMenu(title: 'Activities', image: 'assets/home/activities.png'),
    HomeMenu(title: 'Practice Problems', image: 'assets/home/practice.png'),
    HomeMenu(title: 'March Tests', image: 'assets/home/march.png'),
    HomeMenu(title: 'June Exams', image: 'assets/home/june.png'),
    HomeMenu(title: 'Preliminary Exams', image: 'assets/home/preliminery.png'),
    HomeMenu(title: 'Examplers', image: 'assets/home/examplers.png'),
    HomeMenu(title: 'November Exams', image: 'assets/home/november.png'),
  ];
}

class HomeMenu {
  final String title;
  final String image;

  HomeMenu({required this.title, required this.image});
}
