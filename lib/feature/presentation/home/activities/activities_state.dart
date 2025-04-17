import 'package:get/get.dart';
import 'package:jsdt_app/feature/domain/activity/activity_model.dart';

class ActivitiesState {
  RxInt activeTab = 0.obs;

  List<ActivityModel> paperOneActivity = [
    ActivityModel(
      title: 'Exponents and Surds',
      items: [
        ActivityItem(
            qustionImage: 'assets/activity/p1exponentsandsurdsg12q1.png',
            answerImage: 'assets/activity/p1exponentsandsurdsg12a1.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1exponentsandsurdsg12q2.png',
            answerImage: 'assets/activity/p1exponentsandsurdsg12a2.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1exponentsandsurdsg12q3.png',
            answerImage: 'assets/activity/p1exponentsandsurdsg12a3.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1exponentsandsurdsg12q4.png',
            answerImage: 'assets/activity/p1exponentsandsurdsg12a4.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1exponentsandsurdsg12q5.png',
            answerImage: 'assets/activity/p1exponentsandsurdsg12a5.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1exponentsandsurdsg12q6.png',
            answerImage: 'assets/activity/p1exponentsandsurdsg12a6.png'),
      ],
    ),
    ActivityModel(
      title: 'Solving Equations and Factorization',
      items: [
        ActivityItem(
            qustionImage: 'assets/activity/p1algebrag12q1.png',
            answerImage: 'assets/activity/p1algebrag12a1.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1algebrag12q2.png',
            answerImage: 'assets/activity/p1algebrag12a2.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1algebrag12q3.png',
            answerImage: 'assets/activity/p1algebrag12a3.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1algebrag12q4.png',
            answerImage: 'assets/activity/p1algebrag12a4.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1algebrag12q5.png',
            answerImage: 'assets/activity/p1algebrag12a5.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1algebrag12q6.png',
            answerImage: 'assets/activity/p1algebrag12a6.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1algebrag12q7.png',
            answerImage: 'assets/activity/p1algebrag12a7.png'),
      ],
    ),
    ActivityModel(
      title: 'Sequence and Series',
      items: [
        ActivityItem(
            qustionImage: 'assets/activity/p1sequenceq1.png',
            answerImage: 'assets/activity/p1sequencea1.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1sequenceq2.png',
            answerImage: 'assets/activity/p1sequencea2.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1sequenceq3.png',
            answerImage: 'assets/activity/p1sequencea3.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1sequenceq4.png',
            answerImage: 'assets/activity/p1sequencea4.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1sequenceq5.png',
            answerImage: 'assets/activity/p1sequencea5.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1sequenceq6.png',
            answerImage: 'assets/activity/p1sequencea6.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1sequenceq7.png',
            answerImage: 'assets/activity/p1sequencea7.png'),
      ],
    ),
    ActivityModel(
      title: 'Functions',
      items: [
        ActivityItem(
            qustionImage: 'assets/activity/p1functionsg12q1.png',
            answerImage: 'assets/activity/p1functionsg12a1.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1functionsg12q2.png',
            answerImage: 'assets/activity/p1functionsg12a2.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1functionsg12q3.png',
            answerImage: 'assets/activity/p1functionsg12a3.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1functionsg12q4.png',
            answerImage: 'assets/activity/p1functionsg12a4.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1functionsg12q5.png',
            answerImage: 'assets/activity/p1functionsg12a5.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1functionsg12q6.png',
            answerImage: 'assets/activity/p1functionsg12a6.png'),
      ],
    ),
    ActivityModel(
      title: 'Financial Mathematics',
      items: [
        ActivityItem(
            qustionImage: 'assets/activity/p1financeg12q1.png',
            answerImage: 'assets/activity/p1financeg12a1.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1financeg12q2.png',
            answerImage: 'assets/activity/p1financeg12a2.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1financeg12q3.png',
            answerImage: 'assets/activity/p1financeg12a3.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1financeg12q4.png',
            answerImage: 'assets/activity/p1financeg12a4.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1financeg12q5.png',
            answerImage: 'assets/activity/p1financeg12a5.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1financeg12q6.png',
            answerImage: 'assets/activity/p1financeg12a6.png'),
      ],
    ),
    ActivityModel(
      title: 'Differential Calculus',
      items: [
        ActivityItem(
            qustionImage: 'assets/activity/p1calculusg12q1.png',
            answerImage: 'assets/activity/p1calculusg12a1.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1calculusg12q2.png',
            answerImage: 'assets/activity/p1calculusg12a2.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1calculusg12q3.png',
            answerImage: 'assets/activity/p1calculusg12a3.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1calculusg12q4.png',
            answerImage: 'assets/activity/p1calculusg12a4.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1calculusg12q5.png',
            answerImage: 'assets/activity/p1calculusg12a5.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p1calculusg12q6.png',
            answerImage: 'assets/activity/p1calculusg12a6.png'),
      ],
    ),
  ];

  List<ActivityModel> paperTwoActivity = [
    ActivityModel(
      title: 'Statistics',
      items: [
        ActivityItem(
            qustionImage: 'assets/activity/p2statisticsg12q1.png',
            answerImage: 'assets/activity/p2statisticsg12a1.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2statisticsg12q2.png',
            answerImage: 'assets/activity/p2statisticsg12a2.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2statisticsg12q3.png',
            answerImage: 'assets/activity/p2statisticsg12a3.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2statisticsg12q4.png',
            answerImage: 'assets/activity/p2statisticsg12a4.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2statisticsg12q5.png',
            answerImage: 'assets/activity/p2statisticsg12a5.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2statisticsg12q6.png',
            answerImage: 'assets/activity/p2statisticsg12a6.png'),
      ],
    ),
    ActivityModel(
      title: 'Analytical Geometry',
      items: [
        ActivityItem(
            qustionImage: 'assets/activity/p2analyticalgeometryg12q1.png',
            answerImage: 'assets/activity/p2analyticalgeometryg12a1.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2analyticalgeometryg12q2.png',
            answerImage: 'assets/activity/p2analyticalgeometryg12a2.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2analyticalgeometryg12q3.png',
            answerImage: 'assets/activity/p2analyticalgeometryg12a3.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2analyticalgeometryg12q4.png',
            answerImage: 'assets/activity/p2analyticalgeometryg12a4.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2analyticalgeometryg12q5.png',
            answerImage: 'assets/activity/p2analyticalgeometryg12a5.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2analyticalgeometryg12q6.png',
            answerImage: 'assets/activity/p2analyticalgeometryg12a6.png'),
      ],
    ),
    ActivityModel(
      title: 'Trigonometry',
      items: [
        ActivityItem(
            qustionImage: 'assets/activity/p2trigonometryg12q1.png',
            answerImage: 'assets/activity/p2trigonometryg12a1.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2trigonometryg12q2.png',
            answerImage: 'assets/activity/p2trigonometryg12a2.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2trigonometryg12q3.png',
            answerImage: 'assets/activity/p2trigonometryg12a3.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2trigonometryg12q4.png',
            answerImage: 'assets/activity/p2trigonometryg12a4.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2trigonometryg12q5.png',
            answerImage: 'assets/activity/p2trigonometryg12a5.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2trigonometryg12q6.png',
            answerImage: 'assets/activity/p2trigonometryg12a6.png'),
      ],
    ),
    ActivityModel(
      title: 'Trigonometry: Functions',
      items: [
        ActivityItem(
            qustionImage: 'assets/activity/p2trigfunctionsg12q1.png',
            answerImage: 'assets/activity/p2trigfunctionsg12a1.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2trigfunctionsg12q2.png',
            answerImage: 'assets/activity/p2trigfunctionsg12a2.png'),
      ],
    ),
    ActivityModel(
      title: 'Trigonometry: 2D/3D Problems',
      items: [
        ActivityItem(
            qustionImage: 'assets/activity/p2trig3dg12q1.png',
            answerImage: 'assets/activity/p2trig3dg12a1.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2trig3dg12q2.png',
            answerImage: 'assets/activity/p2trig3dg12a2.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2trig3dg12q3.png',
            answerImage: 'assets/activity/p2trig3dg12a3.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2trig3dg12q4.png',
            answerImage: 'assets/activity/p2trig3dg12a4.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2trig3dg12q5.png',
            answerImage: 'assets/activity/p2trig3dg12a5.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2trig3dg12q6.png',
            answerImage: 'assets/activity/p2trig3dg12a6.png'),
      ],
    ),
    ActivityModel(
      title: 'Euclidean Geometry',
      items: [
        ActivityItem(
            qustionImage: 'assets/activity/p2euclideangeometryg12q1.png',
            answerImage: 'assets/activity/p2euclideangeometryg12a1.png'),
        ActivityItem(
            qustionImage: 'assets/activity/p2euclideangeometryg12q2.png',
            answerImage: 'assets/activity/p2euclideangeometryg12a2.png'),
      ],
    ),
  ];
}
