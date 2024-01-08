import 'package:flutter/material.dart';
import 'package:travel_host/widgets/home_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: HomeAppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  height: 200,
                  child: ListView.builder(
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            width: 160,
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                //city1.jpg
                                image:
                                    AssetImage("images/city${index + 1}.jpg"),
                                fit: BoxFit.cover,
                                opacity: 0.7,
                              ),
                            ),
                          ),
                        );
                      }),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
