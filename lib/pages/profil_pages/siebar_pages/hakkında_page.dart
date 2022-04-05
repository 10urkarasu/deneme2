import 'package:flutter/material.dart';

class HakkindaPage extends StatefulWidget {
  const HakkindaPage({Key? key}) : super(key: key);

  @override
  _HakkindaPageState createState() => _HakkindaPageState();
}

class _HakkindaPageState extends State<HakkindaPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir Çınar taraından yürütülen 3301456 kodlu ders kapsamında 183301038 numaralı Onur KARASU tarafından 8 Nisan 2021 günü yapılmıştır"
      ),
    );
  }
}
