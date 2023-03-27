
import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
   
  const ScrollDesignScreen({Key? key}) : super(key: key);
    final boxDecoration = const BoxDecoration(
          gradient:  LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [
            Color(0xff5ee8c5),
            Color(0xff30BAD6)
          ]),
        );
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration:  boxDecoration,
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          children: const[
            Page1(),
            Page2()
          ],
        ),
      )
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const[
        //Backgound Image
        Backgound(),
        //Text Container
        MainContainer(),
        //Arrow Icon
      ],
    );
  }
}

class MainContainer extends StatelessWidget {
  const MainContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          const Text('10°',style: textStyle),
          const Text('Wednesday',style: textStyle,),
          Expanded(child: Container()),
          const Icon(Icons.arrow_downward_rounded,color: Colors.white,size: 100)
    
        ],
      ),
    );
  }
}

class Backgound extends StatelessWidget {
  const Backgound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff30BAD6),
        alignment: Alignment.topCenter,
        height: double.infinity,
        child: const Image(image: AssetImage('assets/scroll-1.png')
      )
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: const Color(0xff0098FA),
                  shape: const StadiumBorder()
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text('Welcome',style: TextStyle(color: Colors.white,fontSize: 30)),
                ),
              ),
      ),
    );
  }
}