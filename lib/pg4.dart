import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtsuvai/colors.dart';


class must extends StatefulWidget {
  late String title;

  // const must({super.key});

  @override
  State<must> createState() => _mustState();
}

class _mustState extends State<must> {
  bool clk1=false;
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        //centerTitle: false,
        title: Text('Must try..',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: "Outfit-SemiBold"),),
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            height: 160,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [gtgreen,Colors.white70],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height*1,
        child: GridView.builder(
            itemCount: 6,

            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisExtent: 300,
              maxCrossAxisExtent: 300,
              childAspectRatio: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder:( BuildContext ctx, index){
              return Card(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image:NetworkImage('https://images.slurrp.com/prodarticles/tc4lgfyuzni.webp?impolicy=slurrp-20210601&width=1200&height=900'),fit: BoxFit.fill,
                              )),),
                        Positioned(child:   IconButton(
                          isSelected: clk1,
                          icon: const Icon(Icons.favorite,),
                          onPressed: () {
                            setState(() {
                              clk1 = !clk1;
                            });
                          },
                        ),top: 5,right: 5,),
                        Positioned(child:  Text('Chicken biriyani',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,fontFamily: "Outfit-SemiBold"),),bottom: 25,left: 15,),
                        Positioned(child:  Text('₹100',style: TextStyle(color: Colors.white,fontSize: 15),),bottom: 5,right: 20,),

                      ],
                    ),



                    Row(
                      children: [
                        Text(' Anna poorna',style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold,fontFamily: "Outfit-SemiBold"  ),),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 12,
                            itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                            itemBuilder: (context, _)=>Icon(
                              Icons.star_purple500_outlined,
                              color: Colors.orangeAccent,
                            ),
                            onRatingUpdate: (rating){
                              print(rating);
                            },
                          ),
                        ),

                      ],
                    ),
                    Row(
                      children: [

                        Text(' Race course..',style:  TextStyle(fontSize: 15, fontFamily: "Outfit-SemiBold" ),),

                      ],
                    ),

                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 150,
                          color: Colors.red,
                          child: Row(
                            children: <Widget>[

                              _itemCount!=0? new  IconButton(icon: new Icon(Icons.remove,color: Colors.white,),
                                onPressed: ()=>setState(()=>_itemCount--),):new Container(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Add',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,fontFamily: "Outfit-SemiBold"),),
                              ),
                              new Text(_itemCount.toString()),
                              new IconButton(icon: new Icon(Icons.add,color: Colors.white,),
                                  onPressed: ()=>setState(()=>_itemCount++)),


                            ],
                          ),
                        ),
                      ],
                    )




                    // Divider(
                    //   thickness: 2,
                    // ),
                    // Row(
                    //   children: [
                    //     Icon(Icons.thumb_up_sharp),
                    //     Text('   Extra 50% OFF',style:  GoogleFonts.openSans(fontSize: 15,color: Colors.grey),)
                    //   ],
                    // )
                  ],
                ),
              );
            }),
      ),







    );
  }
}