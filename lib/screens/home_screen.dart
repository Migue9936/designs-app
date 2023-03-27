import 'package:flutter/material.dart';

import 'package:designs/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

   
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: const[
          //Backgound
          Background(),
          // Home Body
          _HomeBody()
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          // Tittles
           PageTitle(),
           //Card Table
           CardTable()
        ]),
    );
  }
}