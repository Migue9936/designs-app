import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
           _SingleCard(color: Color.fromARGB(255, 58, 243, 33), icon: Icons.pie_chart, text: 'General',),
           _SingleCard(color: Colors.purpleAccent, icon: Icons.bus_alert_outlined, text: 'Transport',),
           
          ]
        ),
        TableRow(
          children: [
           _SingleCard(color: Colors.limeAccent, icon: Icons.shopify_sharp, text: 'Shopping',),
           _SingleCard(color: Colors.redAccent, icon: Icons.sell_rounded, text: 'Services',),
           
          ]
        ),
        TableRow(
          children: [
           _SingleCard(color: Colors.orange, icon: Icons.blinds_closed_rounded, text: 'Bill',),
           _SingleCard(color: Colors.cyanAccent, icon: Icons.play_arrow, text: 'Entretaiment',),
           
          ]
        ),
        TableRow(
          children: [
           _SingleCard(color: Color.fromARGB(255, 58, 11, 66), icon: Icons.developer_board_rounded, text: 'Software',),
           _SingleCard(color: Colors.yellow, icon: Icons.breakfast_dining, text: 'Grosery',),
           
          ]
        ),
        
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({required this.icon, required this.color, required this.text});

  
  

  @override
  Widget build(BuildContext context) {
  var column = Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: Icon(icon,color: Colors.white,size: 35)
              ),
              const SizedBox(height: 10),
              Text(text,style:  TextStyle(color: color,fontSize: 18),)
            ],
          );
      return _CardBackground(child: column);
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child; 
  const _CardBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
          child: Container(
            height: 180,
            decoration:  BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}