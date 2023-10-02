import 'package:flutter/material.dart';
import 'package:tekatech/constants.dart';
import 'package:tekatech/widgets/custom_search_field.dart';

class MessengerScreen extends StatelessWidget {
  MessengerScreen({super.key});

  List<String> names = [
    "Ahmed Ali",
    "Montaser Ahmed",
    "Mohamed Sherif",
    "Ashraf Mohammed",
    "Nagham Fathy",
    "Mariam Sedky",
    "Mahmoud Barakat",
    "Ahmed Ali",
    "Montaser Ahmed",
    "Mohamed Sherif",
    "Ashraf Mohammed",
    "Nagham Fathy",
    "Mariam Sedky",
    "Mahmoud Barakat",
    "Ahmed Ali",
  ];

  List<String> messages = [
    "Hi Ali",
    "Hello Ahmed",
    "Mohamed ",
    "Where are you? ",
    "how???",
    "Mariam are you here?",
    "listen to this record",
    "what are you doing?",
    "Hi Ali",
    "Hello Ahmed",
    "Mohamed ",
    "Where are you? ",
    "how???",
    "Mariam are you here?",
    "listen to this record",
  ];
  List<String> dates = [
    "9:00", "9:10", "9:20", "9:25", "9:14",
    "8:00", "5:10", "2:20", "7:25", "12:14",
    "3:00", "6:10", "1:20", "2:25", "12:10",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlackColor,
      appBar: AppBar(
        backgroundColor: kBlackColor,
        title: Text(
          "Chats",
          style: TextStyle(
              color: kWhiteColor, fontSize: 32, fontWeight: FontWeight.w600),
        ),
        leading: CircleAvatar(
          backgroundColor: kGrayColor.withOpacity(0.15),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: kWhiteColor,
              )),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: kGrayColor.withOpacity(0.15),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  color: kWhiteColor,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 12.0,
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: SearchField(),
            ),
            const SizedBox(height: 12.0,),
            SizedBox(
              height: 120,
              child: ListView.builder(
                itemCount: names.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index){
                  return Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              //borderRadius: BorderRadius.circular(12.0),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(height: 5.0,),
                          Text(names[index], style: TextStyle(color: kWhiteColor),),
                        ],
                      ),
                      const SizedBox(width: 8.0,),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        child: Image.network(
                          "https://th.bing.com/th?id=OIP.Vt3kGu4X6WQlmH91GpJpzgHaFH&w=300&h=207&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
                          fit: BoxFit.contain,
                        ),
                      ),
                      title: Text(
                        names[index],
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                            color: kWhiteColor,
                        ),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            messages[index],
                            style: TextStyle(color: kWhiteColor),
                          ),
                          Text(dates[index]),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10.0,
                      ),
                  itemCount: names.length),
            ),
          ],
        ),
      ),
    );
  }
}
