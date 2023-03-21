import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'CategoryTypeWidget.dart';
import 'PilihanProductDetailWidget.dart';
import 'ProductHeaderUI.dart';

class CompareUI extends StatefulWidget {
  const CompareUI({Key? key}) : super(key: key);

  @override
  State<CompareUI> createState() => _CompareUIState();
}

class _CompareUIState extends State<CompareUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("UI COMPARE")),
      body: Container(
        margin: EdgeInsets.all(20),
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ProductHeaderUI(
                colorBorder: Colors.purple,
                color: Colors.purple.shade100,
                text: 'Obligasi Negara Th. 2006 Seri FR0037',
                row: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    CategoryTypeWidget(text: "Bond", color: Colors.black26),
                  ],
                ),
                textButton: 'Change Bond',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 7),
              child: Text(
                "AUM",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              width: 210,
              child: PilihanProductDetailWidget(
                colorBorder: Colors.purple,
                color: Colors.purple.shade100,
                title: Center(
                  child: Text(
                    "1,536.27",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
                subtitle: Center(
                  child: Text(
                    '01, Feb 2023',
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 10,
                        color: const Color(0xFF515772)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
