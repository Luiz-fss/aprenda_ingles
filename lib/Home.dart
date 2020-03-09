import 'package:aprenda_ingles/Telas/Bichos.dart';
import 'package:aprenda_ingles/Telas/Numeros.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2,vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.brown,
        title: Text(
          "Aprenda inglês",
          textAlign: TextAlign.center,
        ),
        bottom: TabBar(
          //tamanho da barra
          indicatorWeight: 4.0,

          //cor da barra
          indicatorColor: Colors.white,

          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),

          //cor das letras
          //labelColor: Colors.green,

          //cor das letras das guias não selecionadas
          //unselectedLabelColor: Colors.purple,

          controller: _tabController,
            tabs: <Widget>[
            Tab(
              text: "Bichos",
            ),
            Tab(
              text: "Números",
            ),

            ],
        ),
      ),

      body: TabBarView(
          controller: _tabController,
          children: <Widget>[

            Bichos(),
            Numeros(),


          ],
      ),
    );
  }
}
