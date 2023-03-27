import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:   [
            // Initial Image
            const Image(image: AssetImage('assets/salto_angel.jpg')),
            //Main Row
            const Title(),
            //Buttons Section
            const ButtonsSection(),
            //Description Section
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text(
                    'Angel Falls (in Pemón: Kerepakupai vená meaning "jump from the deepest place")n 1 is the highest waterfall in the world, with a height of 979 m (807 m of uninterrupted fall),123 originating in the Auyantepuy. It is located in Canaima National Park, Bolívar State, Venezuela. It is a protected natural area, declared a national park on June 12, 1962 and a UNESCO World Heritage Site in 1994,4 and extends over an area of more than 30,000 km² (similar to the size of Belgium) to the border with Brazil and the Essequibo territory (currently under claim).',
                    style: TextStyle(fontStyle: FontStyle.italic,),  
                    ),
            ),
            //Venezuelan Flag
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                child: const Image(image: AssetImage('assets/venezuela.jpg'),fit: BoxFit.contain,)
              )
          ],
        ),
      ),
    );
  }
}



class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Text Columns
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const[
              Text('Canaima Salto Angel',style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Estado Bolivar, Venezuela',style: TextStyle(color: Colors.black45)),
            ],
          ),
          // Icon/ Number Row
          Row(
            children: const[
              Icon(Icons.star,color: Colors.red),
              Text('100'),
            ],
          )
        ],
      ),
    );
  }
}

class ButtonsSection extends StatelessWidget {
  const ButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          //Phone Icon
          IconColumn(icon: Icons.call, text: 'call',),
          //Route Icon
          IconColumn(icon: Icons.map_outlined, text: 'route',),
          //Share Icon
          IconColumn(icon: Icons.share_outlined, text: 'share',),
        ],
      ),
    );
  }
}

class IconColumn extends StatelessWidget {
  final String text;
  final IconData icon;
  const IconColumn({super.key, required this.text, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
         Icon(icon,color: Colors.blueAccent,size: 30),
        Text(text.toUpperCase(),style: const TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold))
      ],
    );
  }
}
