import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../components/SocialButton.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Center(
            child: Container(
              width: 1000,
              child: Column(
                children: [
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(Icons.circle, color: Colors.red,),
                      Row(
                        children: [
                          const Text('Home', style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),),
                          const SizedBox(width: 30,),
                          const Text('About', style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),),
                          const SizedBox(width: 30,),
                          const Text('Works', style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),),
                          const SizedBox(width: 30,),
                          const Text('Contact', style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.bold),),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(
                        width: 600,
                        height: 500,
                        clipBehavior: Clip.hardEdge,
                        padding: const EdgeInsets.only(left: 50, top: 50, bottom: 30, right: 150),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white,
                              Colors.grey
                            ]
                          )
                        ),
                        child: Column(
                          children: [
                            const Text("Hey I'm Mukesh, web and app developer with 2 years experience", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                            const SizedBox(height: 50,),
                            const Text("Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.", style: TextStyle(fontSize: 15, color: CupertinoColors.systemGrey),),
                            const SizedBox(height: 80,),
                            Row(
                              children: [
                                ElevatedButton(

                                    onPressed: (){},
                                    child: const Text('Contact Me'),
                                  style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                                      backgroundColor: Colors.black, foregroundColor: Colors.white, shape: const StadiumBorder()),
                                ),
                                const SizedBox(width: 30,),
                                SocialButton(width: 40, greyIcon: 'assets/images/linked_in.png', colorIcon: 'assets/images/linked_in_color.png',),
                                const SizedBox(width: 30,),
                                SocialButton(width: 40, greyIcon: 'assets/images/twitter.png', colorIcon: 'assets/images/twitter_color.png',),
                                const SizedBox(width: 30,),
                                // SocialButton(),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          // width: 700,
                          height: 500,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.deepOrange,
                                    Colors.yellow
                                  ]
                              )
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset('assets/images/portfolioPic.jpg', fit: BoxFit.cover,)),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),


                  //--------------------------------------projects section------------------------------------>
                  Row(
                    children: [
                      Expanded(
                        child: projectPost(images: ['movieMaster1.jpg','movieMaster2.jpg','movieMaster3.jpg'], startColor: Colors.white, endColor: Colors.indigo),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: projectPost(images: ['taxiRider1.jpg','taxiRider3.jpg','taxiRider2.jpg'],endColor: Colors.blueGrey),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


Widget projectPost({required images, startColor, endColor}){
  return Container(
    padding: const EdgeInsets.all(5),
    // width: 700,
    height: 500,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              startColor ?? Colors.white,
              endColor ?? Colors.grey
            ]
        )
    ),
    child: Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Expanded(
                //   child:
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('assets/images/${images[0]}', width: 200,),),
                // ),
                // Expanded(
                //   child:
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('assets/images/${images[1]}', width: 200,),),
                // ),
              ],
            ),
          ],
        ),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 2),),
                child: Image.asset('assets/images/${images[2]}', height: double.infinity,)),),
        ),

      ],
    ),
  );
}
