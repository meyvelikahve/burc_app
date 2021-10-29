import 'package:burc_app/burc_list.dart';
import 'package:flutter/material.dart';

import 'models/burc.dart';

class BurcDetay extends StatelessWidget {

  int gelenIndex;
  Burc secilenBurc;
  BurcDetay(this.gelenIndex);

  @override
  Widget build(BuildContext context) {

    secilenBurc = BurcListesi.tumBurclar[gelenIndex];

    return Scaffold(
      primary: true,
      body: CustomScrollView(
        primary: false,
        slivers: [

          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            primary: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/" + secilenBurc.burcBuyukResim, fit: BoxFit.cover),
              centerTitle: true,
              title: Text(secilenBurc.burcAdi+" Burcu ve Özellikleri"),
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(8),
              
              decoration: BoxDecoration(
                color: Colors.pink.shade50,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: SingleChildScrollView(
                child: Text(secilenBurc.burcDetay, style: TextStyle(fontSize: 18, color: Colors.black),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
