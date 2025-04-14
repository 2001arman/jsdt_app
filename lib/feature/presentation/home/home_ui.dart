import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jsdt_app/feature/presentation/home/home_logic.dart';
import 'package:jsdt_app/utility/shared/constants/constants_ui.dart';
import 'package:jsdt_app/utility/shared/widgets/custom_drawer.dart';

class HomeUi extends StatelessWidget {
  static const String namePath = '/home_ui';
  final logic = Get.find<HomeLogic>();
  final state = Get.find<HomeLogic>().state;
  HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kWhiteColor,
        centerTitle: true,
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image.asset(
                'assets/icons/more.png',
                width: 30,
              ),
            ),
          ),
        ),
        leadingWidth: 50,
        automaticallyImplyLeading: true,
        actions: [
          Icon(
            Icons.favorite_border,
            color: kMainColor,
            size: 26,
          ),
          const SizedBox(width: 20),
        ],
        title: Text(
          'Grade 12 Mathematics',
          style: mainTextStyle.copyWith(
            fontSize: 22,
            fontWeight: bold,
          ),
        ),
      ),
      drawer: const CustomDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Good Morning, [#user]!',
                style: mainTextStyle.copyWith(fontWeight: bold),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: state.homeMenus.length,
                padding: const EdgeInsets.all(20),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => Get.toNamed(
                    state.homeMenus[index].path,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: defaultBoxShadow,
                      color: kWhiteColor,
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.asset(state.homeMenus[index].image),
                        ),
                        Text(
                          state.homeMenus[index].title,
                          style: mainTextStyle.copyWith(fontWeight: bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
