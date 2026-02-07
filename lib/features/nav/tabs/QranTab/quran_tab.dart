import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/features/nav/tabs/QranTab/widgets/most_recently_section.dart';
import 'package:islami/features/nav/tabs/QranTab/widgets/soura_details.dart';
import 'package:islami/features/nav/tabs/QranTab/widgets/sura_search.dart';

/// snake case , camel case
class QranTab extends StatelessWidget {
  const QranTab({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double height = mediaQuery.size.height;
    double width = mediaQuery.size.width;

    return Container(
      width: double.infinity,
      // color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 192.h,
            ),
            SuraSearch(),
            SizedBox(
              height: 20,
            ),
            MostRecentlySection(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Sura List",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SouraDetails(
                                      index: 1,
                                    )));
                      },
                      child: ListTile(
                        leading: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Image.asset("assets/images/sura_icon.png"),
                            Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        title: Text("Al-Fatiha",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        subtitle: Text(
                          " Verses  : 7",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        trailing: Text(
                          "الفاتحه",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(
                        indent: 64,
                        endIndent: 64,
                      ),
                  itemCount: 20),
            )
          ],
        ),
      ),
    );
  }
}
