import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce1/Pages/home_screen.dart';
import 'package:flutter/material.dart';

class DetailasPage extends StatefulWidget {
  String productName;
  String price;
  String image;
 DetailasPage({Key? key,required this.productName, required this.price,required this.image}) : super(key: key);

  @override
  State<DetailasPage> createState() => _DetailasPageState();
}
int _current = 0;
List<String> tabs =["All","Category","Top","Recommended"];
List<String> images = [
  'images/img_1.png',
  'images/img_5.png',
];
class _DetailasPageState extends State<DetailasPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     // appBar: AppBar(title: Text(widget.productName.toString()),centerTitle: true,),

      body: Column(

        children: [
          SafeArea(
            child: Container(
              color: Colors.black12.withOpacity(0.05),
              height: 330,
              child: Column(
                children: [
                  Center(child:
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset("images/img_8.png",fit: BoxFit.cover,),
                      )),
                  /// slider
                Container(
                  height: 80,
                  child:   Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0), //<-- SEE HERE
                        side: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      child: CarouselSlider(
                          items: genaratiImage(),
                          options: CarouselOptions(
                              enlargeCenterPage: true,
                              aspectRatio: 18 / 8,
                              autoPlay: true,
                              onPageChanged: (index, other) {
                                setState(() {
                                  _current = index;
                                });
                              })),
                    ),
                  ),
                )

                ],
              ),
        
            ),
          ),
          ///description
          Container(
            height: 100,
            color: Colors.black12.withOpacity(0.05),
            child: Column(
              children: [
               Row(children: [ Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("Panjab Description : ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orange),),
               ),],),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Punjab has always been land of great saints and fighters. "
                      "Tourist places - Punjab is the place of Sikhism."
                      "The holiest of Sikh shrines, the Sri Harmandir Sahib (or Golden Temple), is in the city of Amritsar."),
                )
              ],
            ),
          ),
          ///color
          Container(
            color: Colors.black12.withOpacity(0.05),
            child: Row(
              children: [
                SizedBox(height: 80,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                decoration:
                BoxDecoration(borderRadius:
                BorderRadius.circular(20),
                      color: Colors.red),
                height: 20,
                width: 20,

              ),
                 ),
                 SizedBox(width:8,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                decoration:
                BoxDecoration(borderRadius:
                BorderRadius.circular(20),
                      color: Colors.green),
                height: 20,
                width: 20,

              ),
                 ),
                 SizedBox(width: 8,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                decoration:
                BoxDecoration(borderRadius:
                BorderRadius.circular(20),
                      color: Colors.yellowAccent),
                height: 20,
                width: 20,

              ),
                 ),
                 SizedBox(width:8,),
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration:
                    BoxDecoration(borderRadius:
                    BorderRadius.circular(20),
                        color: Colors.blue),
                    height: 20,
                    width: 20,

                  ),
                ),
                 SizedBox(width: 80,),
                /// increment and dicrement
                Container(
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(20),
                      color: Colors.black12.withOpacity(0.05)),
                  height:30,
                  width: 30,
                  child: InkWell(
                    onTap: (){},
                    child: Center(child: Icon(Icons.add)),
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(20),
                      color: Colors.black12.withOpacity(0.05)),
                  height:30,
                  width: 30,
                  child: InkWell(
                    onTap: (){},
                    child: Center(child:Text("-",style: TextStyle(fontSize:30),),),
                  ),
                ),
                SizedBox(height: 25,),
                





         ],),
          ),
          Expanded(
            child: Container(
              color: Colors.black12.withOpacity(0.05),
              child: Column(
                children: [
                  Center(child: ElevatedButton(onPressed: (){}, child: Text("Add to Cart"))),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
