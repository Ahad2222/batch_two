import 'package:batch_two/constants/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: Scaffold(
        backgroundColor: Color(0xfffafafa),
        appBar: myCustomAppBar(),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TaskCard(
              barColor: Colors.red,
              title: 'Flutter App Development',
              category: 'Development',
              time: '8:00',
              participantsImages: [
                'assets/images/dummy_image_1.png',
                'assets/images/dummy_image_2.png',
                'assets/images/dummy_image_3.png',
                'assets/images/dummy_image_4.png',
              ],
            ),
            TaskCard(
              barColor: kSecondaryColor,
              title: 'Figma Crash Course',
              category: 'Design',
              time: '9:00',
              participantsImages: [
                'assets/images/dummy_image_4.png',
                'assets/images/dummy_image_3.png',
                'assets/images/dummy_image_1.png',
                'assets/images/dummy_image_2.png',
              ],
            ),
            TaskCard(
              barColor: Colors.red,
              title: 'Flutter App Development',
              category: 'Development',
              time: '8:00',
              participantsImages: [
                'assets/images/dummy_image_1.png',
                'assets/images/dummy_image_2.png',
                'assets/images/dummy_image_3.png',
                'assets/images/dummy_image_4.png',
              ],
            ),
            TaskCard(
              barColor: kSecondaryColor,
              title: 'Figma Crash Course',
              category: 'Design',
              time: '9:00',
              participantsImages: [
                'assets/images/dummy_image_4.png',
                'assets/images/dummy_image_3.png',
                'assets/images/dummy_image_1.png',
                'assets/images/dummy_image_2.png',
              ],
            ),
            TaskCard(
              barColor: Colors.red,
              title: 'Flutter App Development',
              category: 'Development',
              time: '8:00',
              participantsImages: [
                'assets/images/dummy_image_1.png',
                'assets/images/dummy_image_2.png',
                'assets/images/dummy_image_3.png',
                'assets/images/dummy_image_4.png',
              ],
            ),
            TaskCard(
              barColor: kSecondaryColor,
              title: 'Figma Crash Course',
              category: 'Design',
              time: '9:00',
              participantsImages: [
                'assets/images/dummy_image_4.png',
                'assets/images/dummy_image_3.png',
                'assets/images/dummy_image_1.png',
                'assets/images/dummy_image_2.png',
              ],
            ),
            TaskCard(
              barColor: Colors.red,
              title: 'Flutter App Development',
              category: 'Development',
              time: '8:00',
              participantsImages: [
                'assets/images/dummy_image_1.png',
                'assets/images/dummy_image_2.png',
                'assets/images/dummy_image_3.png',
                'assets/images/dummy_image_4.png',
              ],
            ),
            TaskCard(
              barColor: kSecondaryColor,
              title: 'Figma Crash Course',
              category: 'Design',
              time: '9:00',
              participantsImages: [
                'assets/images/dummy_image_4.png',
                'assets/images/dummy_image_3.png',
                'assets/images/dummy_image_1.png',
                'assets/images/dummy_image_2.png',
              ],
            ),
            TaskCard(
              barColor: Colors.red,
              title: 'Flutter App Development',
              category: 'Development',
              time: '8:00',
              participantsImages: [
                'assets/images/dummy_image_1.png',
                'assets/images/dummy_image_2.png',
                'assets/images/dummy_image_3.png',
                'assets/images/dummy_image_4.png',
              ],
            ),
            TaskCard(
              barColor: kSecondaryColor,
              title: 'Figma Crash Course',
              category: 'Design',
              time: '9:00',
              participantsImages: [
                'assets/images/dummy_image_4.png',
                'assets/images/dummy_image_3.png',
                'assets/images/dummy_image_1.png',
                'assets/images/dummy_image_2.png',
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar myCustomAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      centerTitle: true,
      leading: Icon(
        Icons.arrow_back,
        color: kTertiaryColor,
      ),
      title: Text(
        'Facebook',
        style: TextStyle(
          fontSize: 24,
          color: Colors.blue,
        ),
      ),
      actions: [
        Icon(
          Icons.search,
          color: kTertiaryColor,
        ),
        SizedBox(
          width: 15,
        ),
      ],
    );
  }
}

class TaskCard extends StatelessWidget {
  TaskCard({
    this.barColor,
    this.title,
    this.category,
    this.time,
    this.participantsImages,
  });

  Color? barColor;
  String? title;
  String? category;
  String? time;
  List<String>? participantsImages;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kTertiaryColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 20),
            blurRadius: 30,
            spreadRadius: -18,
            color: kPrimaryColor.withOpacity(0.1),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 84,
            width: 4,
            decoration: BoxDecoration(
              color: barColor,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 4,
                ),
                Text(
                  title!,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      '$category',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff637085),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Image.asset(
                      'assets/images/clock.png',
                      height: 16,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      '$time',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff637085),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    Image.asset(
                      participantsImages![0],
                      height: 30,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      participantsImages![1],
                      height: 30,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      participantsImages![2],
                      height: 30,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Image.asset(
                      participantsImages![3],
                      height: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
