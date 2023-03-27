import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Classify Transactions',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
            SizedBox(height: 10),
            Text('Classify this transaction into a particular category',style: TextStyle(color: Colors.white,fontSize: 16),),

          ],
        ),
      ),
    );
  }
}