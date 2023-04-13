import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_calculator/screen/home/controller/home_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController Hc = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Calculator",
            style: GoogleFonts.quicksand(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color(0xffA7BBC7),
        ),
        backgroundColor: Color(0xffE1E5EA),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            Center(
              child: Obx(
                () => Text(
                  "${Hc.i}",
                  style: GoogleFonts.quicksand(fontSize: 40),
                ),
              ),
            ),
            Spacer(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 5,
                ),
                FloatingActionButton(
                    backgroundColor: Color(0xffDA7F8F),
                    onPressed: () {
                      Hc.i++;
                    },
                    child: Icon(Icons.add)),
                FloatingActionButton(
                    backgroundColor: Color(0xffDA7F8F),
                    onPressed: () {
                      Hc.i - 1;
                    },
                    child: Icon(Icons.remove)),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  backgroundColor: Color(0xffDA7F8F),
                  onPressed: () {
                    Hc.i.value=(Hc.i*2).toInt();
                  },
                  child: Text(
                    "X2",
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                    ),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Color(0xffDA7F8F),
                  onPressed: () {
                    Hc.i.value=(Hc.i*3).toInt();
                  },
                  child: Text(
                    "X3",
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                    ),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Color(0xffDA7F8F),
                  onPressed: () {
                    Hc.i.value=(Hc.i*4).toInt();
                  },
                  child: Text(
                    "X4",
                    style: GoogleFonts.quicksand(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
