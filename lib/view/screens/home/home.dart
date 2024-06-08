import 'package:batch_two/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  List<Map<String, dynamic>> items = [
    {
      'name': 'Fahad',
      'lastMessage': 'Hi Bhai',
    },
    {
      'name': 'Ahmad',
      'lastMessage': 'Jee ma Thek hon',
    },
    {
      'name': 'Fizan',
      'lastMessage': 'Hi Bhai',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffafafa),
      appBar: myCustomAppBar(),
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  items[index]['name'],
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  items[index]['lastMessage'],
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          );
        },
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

// ignore: must_be_immutable
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
