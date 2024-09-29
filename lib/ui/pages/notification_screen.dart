import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:todo/ui/theme.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key, this.payload}) : super(key: key);
  final payload;

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late final _payLoad;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _payLoad = widget.payload;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          _payLoad.toString().split("|")[0],
          style: TextStyle(color: Get.isDarkMode ? Colors.white : Colors.white),
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
         //crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Text(
                  "Hello, Shatha",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    color: Get.isDarkMode ? Colors.white : darkGreyClr,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "You Have New Reminder",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Get.isDarkMode ? Colors.grey : darkGreyClr,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: primaryClr),
                // here we uses SingleChildScrollView for the orientation
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.text_format,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Title",
                            style: TextStyle(
                                fontSize: 30,
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        _payLoad.toString().split("|")[0],
                        style: TextStyle(
                            fontSize: 20,
                            color: Get.isDarkMode
                                ? Colors.white
                                : Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.description_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Description",
                            style: TextStyle(
                              fontSize: 30,
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        _payLoad.toString().split("|")[1],
                        style: TextStyle(
                            fontSize: 20,
                            color: Get.isDarkMode
                                ? Colors.white
                                : Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Date",
                            style: TextStyle(
                                fontSize: 30,
                                color: Get.isDarkMode
                                    ? Colors.white
                                    : Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        _payLoad.toString().split("|")[2],
                        style: TextStyle(
                            fontSize: 20,
                            color: Get.isDarkMode
                                ? Colors.white
                                : Colors.white),
                      ),

                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
