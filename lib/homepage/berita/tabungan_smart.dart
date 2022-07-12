import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission_dicoding/data/colors.dart';

import '../homepage.dart';

class TabunganSmart extends StatelessWidget {
  const TabunganSmart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tabungan Smart",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.grey[100],
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Homepage()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return false;
        },
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: [
                Center(
                  child: Image.asset("assets/images/smart.jpg"),
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "Tabungan Smart",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 15),
                      child: Column(
                        children: [
                          Text("Tabungan Smart : Tabungan smart merupakan produk tabungan dengan hadiah langsung. Bermacam macam Hadiah dapat anda pilih sesuai keinginan anda berdasarkan nominal dan jangka waktu tanam tabungan.")
                        ],
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Row(
                    children: [
                      Text("Keunggulan Tabungan Smart : ", style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 5),
                  child: Column(
                    children: [
                      Text("* Hadiah diterima dimuka.\n"
                          "* Macam hadiah dapat anda pilih sendiri.\n"
                          "* Banyaknya pilihan jangka waktu mulai dari 3 bulan s/d 60 Bulan.\n"
                          "* Dapat dijadikan sebagai agunan kredit\n"
                          "* Dijamin oleh LPS\n"),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 0),
                  child: Row(
                    children: [
                      Text("Syarat dan Ketentuan : ", style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 5, right: 15),
                  child: Container(
                    child: Column(
                      children: [
                        Text("* Fotocopy identitas (KTP/Passport)\n"
                            "* Mengisi dan menandatangani Aplikasi Pembukaan Rekening\n"
                            "* Fasilitas Bilyet Tabungan\n", textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50, left: 70, right: 30,),
                  child: GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonRiplay(title: "Simulasi Perhitungan",),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonRiplay extends StatelessWidget {
  const ButtonRiplay({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kPrimaryColor,
      ),
      width: MediaQuery.of(context).size.width / 1.5,
      height: 40,
      child: TextButton(
        onPressed: (){},
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}



