import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEBF0FF),
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        physics: ScrollPhysics(),

        padding: EdgeInsets.all(24),

        children: [
          Text('Good Afternoon', style: TextStyle(
            fontSize: 16
                ,
            fontWeight: FontWeight.w700
          ),),
          SizedBox(height: 16,),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      leading: AspectRatio(
                          aspectRatio: 4 / 4,
                          child: Image.asset('assets/sevalogo.jpg')),
                      title: Text('Mountain'),
                      subtitle: Text('hajdhasjd'),
                      trailing: Icon(
                        Icons.arrow_circle_right,
                        color: Colors.blue,
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
