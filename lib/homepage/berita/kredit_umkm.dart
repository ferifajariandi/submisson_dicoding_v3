import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission_dicoding/data/colors.dart';

import '../homepage.dart';

class KreditUmkmScreen extends StatelessWidget {
  const KreditUmkmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Kredit UMKM",
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
                context, MaterialPageRoute(builder: (context) => Homepage()));
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
                  child: Image.asset("assets/images/umkm.png"),
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
                              "Kredit UMKM",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 20, 10, 10),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 4,
                                    child: Text(
                                      "Kredit UMKM :",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Expanded(
                                      child: Text(
                                          " Fasilitas pinjaman yang diberikan Besar")),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              width: 380,
                              height: 2,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 17),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text("Keunggulan Kredit UMKM"),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Text(
                                  "1. Suku bunga yang ringan \n2. Persyaratan yang mudah & Proses cepat",
                                ))
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 10),
                            child: Row(
                              children: [Expanded(child: Text("Agunan :"))],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 10),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Text(
                                        " * Rumah / Tanah\n * Mobil / Montor"))
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15, bottom: 10),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Text(
                                  "Syarat dan Ketentuan",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline),
                                ))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, bottom: 10),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Text(
                                        "1. Fotocopy KTP suami & istri\n2. Fotocopy KK & Fotocopy Surat Nikah\n3. Fotocopy BPKB & STNK apabila aguna mobil / motor"))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: GestureDetector(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ButtonPengajuan(
                                    title: "Ajukan Kredit",
                                  ),
                                  ButtonPengajuan(
                                    title: "Lihat Brosur",
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            // Container awal
          ),
        ),
      ),
    );
  }
}

class ButtonPengajuan extends StatelessWidget {
  const ButtonPengajuan({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kPrimaryColor,
      ),
      child: TextButton(
          onPressed: () {},
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
