import 'package:flutter/material.dart';

class SuraSearch extends StatelessWidget {
  const SuraSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: SizedBox(
        height: 55,
        child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              hintText: ' Sura Name ',
              hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              prefixIcon: Image.asset('assets/images/icons/ic_book.png',
                  color: Color(0xffE2BE7F)),

              // contentPadding: EdgeInsets.symmetric(vertical: 55),
              enabledBorder: OutlineInputBorder(
                // gapPadding: 0.2,
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xffE2BE7F),
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xffE2BE7F),
                  width: 1,
                ),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Color(0xffE2BE7F),
                    width: 1,
                  ))),
        ),
      ),
    );
  }
}
