import 'package:flutter/material.dart';
import 'package:fmarket/kategori.dart';

class Urunler extends StatefulWidget {
  const Urunler({Key? key}) : super(key: key);

  @override
  _UrunlerState createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> with SingleTickerProviderStateMixin {
  late TabController televizyonKontrolcusu;

  @override
  void initState() {
    super.initState();
    televizyonKontrolcusu = TabController(length: 4, vsync: this);
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            indicatorColor: Colors.red.shade400,
            labelColor: Colors.red.shade400,
            unselectedLabelColor: Colors.grey,
            isScrollable: true,
            controller: televizyonKontrolcusu,
            labelStyle: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
            tabs: [
              Tab(
                child: Text("Temel Gıda"),
              ),
              Tab(
                child: Text("Şekerleme"),
              ),
              Tab(
                child: Text("İçecekler"),
              ),
              Tab(
                child: Text("Temizlik"),
              ),
            ]),
        Expanded(
          child: TabBarView(
            controller: televizyonKontrolcusu,
            children: [
              Kategori(
                kategori: "Temel Gıda",
              ),
              Kategori(
                kategori: "Şekerleme",
              ),
              Kategori(
                kategori: "İçecekler",
              ),
              Kategori(
                kategori: "Temizlik",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
