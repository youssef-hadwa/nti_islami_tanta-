import 'package:flutter/material.dart';

class MostRecentlySection extends StatelessWidget {
  const MostRecentlySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Most Recently",
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              padding: EdgeInsets.only(left: 17, right: 6, bottom: 7, top: 7),
              // margin: EdgeInsets.only(right: 10),

              width: 283,
              height: 150,
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Color(0xffE2BE7F),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xffE2BE7F),
                  width: 1,
                ),
              ),
              child: Row(
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Al-Anbiya",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        Text("الأنبياء",
                            style: TextStyle(
                              fontSize: 24,
                            )),
                        Text("112 Verses  ",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold))
                      ]),
                  Image.asset('assets/images/img_most_recent.png')
                ],
              ),
            ),
            itemCount: 15,
          ),
        ),
      ],
    );
  }
}
