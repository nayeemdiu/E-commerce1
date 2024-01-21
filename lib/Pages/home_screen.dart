
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce1/Pages/details_page.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int _current = 0;
List<String> tabs =["All","Category","Top","Recommended"];
List<String> images = [
  'images/img_1.png',
  'images/img_5.png',
];

final List<String> name = [
  'Ahnaf (Its name is ahnaf babu)',
  'Nayeem',
  'Anny',
  'Sabbir',
  'Azad',
  'Khushi',
];
List<Widget> genaratiImage() {
  return images
      .map((element) => ClipRect(
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            ),
          ))
      .toList();
}

class _HomeScreenState extends State<HomeScreen> {
  static String leadPopUpCallStatus = "";

  List imageList = [
    'images/img_8.png',
    'images/img_9.png',
    'images/img_12.png',
    'images/img_11.png',
  ];
  List productTitle =[
    "Panjabi",
    "Three Pic",
    "Borka",
    "Shari",
  ];
  List price =[
    "\$300",
    "\$650",
    "\$800",
    "\$370",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /// Searching product
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: 50,
                    color: Colors.black12.withOpacity(0.05),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                              color: Colors.black12.withOpacity(0.05),
                            )),
                        labelText: "Find Your Product",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    margin: EdgeInsets.only(left: 15),
                    child: Icon(Icons.notification_add_outlined,color: Colors.orangeAccent,),
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.05),
                      border: Border.all(
                        color: Colors.white70,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),

            /// slider
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 5,
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
            SizedBox(height: 10,),
            ///Select Ctagory

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Select Catagory"),
        )
        ],
          ),
            SizedBox(
              height: 5,
            ),
            ///   Ctegory
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
              child:  SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.black12.withOpacity(0.05),
                        ),
                        height: 40,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              width:6.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0)),
                                //color: Colors.black12.withOpacity(0.05),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  'All',
                                  textScaleFactor: 2,
                                  style: TextStyle(color: Colors.black38,fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 7,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.black12.withOpacity(0.05),
                        ),
                        height: 40,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              width:6.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0)),
                                //color: Colors.black12.withOpacity(0.05),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  'Category',
                                  textScaleFactor: 2,
                                  style: TextStyle(color: Colors.black38,fontSize: 12),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 7,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.black12.withOpacity(0.05),
                        ),
                        height: 40,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              width:6.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0)),
                                //color: Colors.black12.withOpacity(0.05),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  'Top',
                                  textScaleFactor: 2,
                                  style: TextStyle(color: Colors.black38,fontSize: 12),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width:7,),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.black12.withOpacity(0.05),
                        ),
                        height: 40,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              width:6.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0)),
                                //color: Colors.black12.withOpacity(0.05),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  'Recommended',
                                  textScaleFactor: 2,
                                  style: TextStyle(color: Colors.black38,fontSize: 12),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                
                
              ),

              ),
            ),
            
            SizedBox(height: 10,),
            /// Product catagory
            Container(
              height: 250,
              color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imageList.length,
                itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 8,left: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                                  DetailasPage(productName: productTitle[index].toString(),
                                      price: price[index].toString(),image: imageList[index].toString()),));
                            },
                            child: ClipRect(
                              child: Card(
                                elevation: 20,
                                  child: Column(
                                    children: [
                                      Image.asset(imageList[index], height: 200,width: 200,fit: BoxFit.cover,),
                                      Text(productTitle[index],style: TextStyle(fontWeight: FontWeight.bold)),
                                      Text(price[index], style: TextStyle(color: Colors.orange)),
                                    ],
                                  )

                              ),
                            ),
                          ),
                        ],
                  ),
                );
              },),
            ),


          ],
        ),
      ),
    );
  }
}
