import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/core/app_color.dart';

class SouraDetails extends StatefulWidget {
  final int index;

  const SouraDetails({super.key, required this.index});

  @override
  State<SouraDetails> createState() => _SouraDetailsState();
}

class _SouraDetailsState extends State<SouraDetails> {
  late String souraData;

  @override
  void initState() {
    // String souraData = ;'
    readSouraAyat();
    super.initState();
  }

  Future<String> readSouraAyat() async {
    souraData =
        await rootBundle.loadString('assets/files/Suras/${widget.index}.txt');

    setState(() {});
    return souraData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alfatiha',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.secondaryColor,
      ),
      body: Stack(children: [
        Image.asset(
          'assets/images/qran_details_bc.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Text(
          souraData,
          style: TextStyle(color: AppColors.primaryColor),
        )
      ]),
    );
  }
}
