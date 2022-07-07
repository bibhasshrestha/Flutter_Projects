import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  var iconData = [
    Icons.person,
    Icons.calendar_month,
    Icons.calendar_today,
    Icons.punch_clock,
    Icons.file_copy,
    Icons.offline_bolt,
    Icons.approval,
    Icons.report,
  ];

  var homedata = [
    'Self Service',
    'Leave Tracker',
    'Attendance',
    'Performance',
    'File',
    'Organization',
    'Approvals',
    'Reports',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEBF0FF),
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Icon(Icons.notifications, color: Colors.white,),
        )],
      ),
      body: ListView(
        physics: ScrollPhysics(),
        padding: EdgeInsets.all(24),
        children: [
          Text(
            'Good Afternoon, Bibhas Shrestha',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 16,
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemCount: homedata.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ListTile(
                    leading: Icon(
                      iconData[index],
                      color: Colors.blue,
                    ),
                    title: Text(homedata[index]),

                    trailing: Icon(
                      Icons.arrow_circle_right,
                      color: Colors.grey,
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
