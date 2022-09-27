import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phipros/customerdata/customer.dart';
import 'package:phipros/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController firstContoller=TextEditingController();
    TextEditingController secondContoller=TextEditingController();
     
String dropdownValue = 'A';




  int ind = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
             Padding(
              padding: EdgeInsets.only(left: 18.0, top: 18),
              child: Text(
                "Welcome, Ali",
                style: textStyle.copyWith(fontSize: 24),
              ),
            ),

             Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                "19 September 2022",
                style: textStyle.copyWith(
                  color: Color.fromRGBO(72, 72, 72, 1) , fontWeight: FontWeight.w100,fontSize: 14,
                ),
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
             Padding(
              padding: EdgeInsets.only(left: 18.0),
              child: Text(
                "Inventory",
                style: textStyle.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            // Here default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0 , vertical: 10),
              child: FlutterToggleTab(
                // width in percent

                width: 90,

                borderRadius: 30,
            marginSelected: EdgeInsets.all(5),
                height: 50,

                selectedIndex: ind,

                selectedBackgroundColors: [Colors.amber],

                selectedTextStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),

                unSelectedTextStyle: const TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                ),

                labels: const ["Items", "Catogries"],

                selectedLabelIndex: (index) {
                  setState(() {
                    ind = index;
                  });
                },

                isScroll: false,
              ),
            ),

            ind == 0
                ? Container(
                    height: MediaQuery.of(context).size.height * 0.67,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.007,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextFormField(
                            controller: firstContoller,
                            keyboardType: TextInputType.emailAddress,
                            style:quicksearch,
                            decoration: InputDecoration(
                                hintText: "Search item...",
                                hintStyle: quicksearch.copyWith(

                                ),
                                suffixIcon: InkWell(
                                  onTap: (){
                                    Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                            return CustomerData();
                          }));
                                  },
                                  child: const Icon(
                                    Icons.search,
                                    size: 25,
                                    color: Colors.black87,
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(119, 1, 185, 1),
                                Color.fromRGBO(187, 0, 255, 1),

                                //add more colors
                              ]),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                    color: Color.fromRGBO(
                                        0, 0, 0, 0.57), //shadow for button
                                    blurRadius: 5) //blur radius of shadow
                              ]),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                onSurface: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              onPressed: () {
                                additems(context);
                              },
                              child: const Text(
                                "Add new item",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, right: 20),
                            child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 20,
                                        mainAxisSpacing: 30),
                                itemCount: 6,
                                itemBuilder: (BuildContext ctx, index) {
                                  return InkWell(
                                    onTap: () {
                                      edititems(context);
                                    },
                                    child: Container(
                                      color: Colors.white,
                                      child: Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 45.0),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade50,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.2,
                                                width: 220,
                                                child: Column(children: [
                                                  SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.05,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 10.0),
                                                    child: Text(
                                                        "Dell Alienware",
                                                        style: heading.copyWith(fontSize: 14)
                                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 68.0),
                                                    child: Text("Laptop",
                                                        style: model
                                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 45.0),
                                                    child: Text("PKR 80,00",
                                                        style: heading.copyWith(fontSize: 14)
                                                                        ),
                                                  ),
                                                ]),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                              right: 15,
                                              top: 0,
                                              child: Image.asset(
                                                "assets/pic2.png",
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.12,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.38,
                                              )),
                                          Positioned(
                                            top: 14,
                                            left: 10,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  color: Colors.amber),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.06,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.03,
                                              child: Center(
                                                child: Text(
                                                  "10",
                                                  style: GoogleFonts.quicksand(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      
                      
                      
                      
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.06,
                              color: const Color.fromRGBO(72, 72, 72, 1)),
                        ),
                      ],
                    ),
                  )
                : Container(
                    height: MediaQuery.of(context).size.height * 0.9,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.007,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextFormField(
                            controller: secondContoller,
                            keyboardType: TextInputType.emailAddress,
                            style: quicksearch,
                            decoration: InputDecoration(
                                hintText: "Search category...",
                                hintStyle:quicksearch,
                                suffixIcon: const Icon(
                                  Icons.search,
                                  size: 25,
                                  color: Colors.black87,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.06,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(colors: [
                                Color.fromRGBO(119, 1, 185, 1),
                                Color.fromRGBO(187, 0, 255, 1),

                                //add more colors
                              ]),
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                    color: Color.fromRGBO(
                                        0, 0, 0, 0.57), //shadow for button
                                    blurRadius: 5) //blur radius of shadow
                              ]),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                onSurface: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              onPressed: () {
                                addnewcategory(context);
                              },
                              child: const Text(
                                "Add new category",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Expanded(
                          child: ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.07,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 29.0, right: 29),
                                    child: InkWell(
                                      onTap: () {
                                        editcategory(context);
                                      },
                                      child: Card(
                                        color: const Color.fromRGBO(
                                            248, 248, 248, 1),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(
                                            "Laptop",
                                            style: GoogleFonts.quicksand(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 21),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ),
          ]),
        ),
      ),
    );
  }

//this fucntion is used for new category
 Future<void> addnewcategory(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Scaffold(
          backgroundColor: Color.fromRGBO(72 ,72, 72, 1),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [SizedBox(height: MediaQuery.of(context).size.height*0.3,),

                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.3,
                    child: Stack(children: [
                    
                    
                    //jhghj
                     Positioned(
          
                       child: Container(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          decoration: const BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(20))
                            
                     
                          ),
                           width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.26,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                               Text(
              "Add new Category",
              style:heading
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                style: quicksearch,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Category name",
                    hintStyle: quicksearch
                    ),
              ),
            ),
         
          
                                       
                                       
                              ],
                            ),
                          ),
                        ),
                     ),
                       Positioned(
                        bottom: 0,
                        left: 40,
                                          child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            SizedBox(width: MediaQuery.of(context).size.width*0.09,),
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Image.asset("assets/groud.png" , height: 60,)) ,
                        
                            SizedBox(width: 20),
                            Image.asset("assets/yes.png" , height: 60,) ,
          
                          ],
                        )  ,
                  
                        
                        ),
                     
                    ]),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }



//this function is used for edit new category
  
  
  
 Future<void> editcategory(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Scaffold(
          backgroundColor: Color.fromRGBO(72 ,72, 72, 1),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [SizedBox(height: MediaQuery.of(context).size.height*0.3,),

                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.3,
                    child: Stack(children: [
                    
                    
                    //jhghj
                     Positioned(
          
                       child: Container(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          decoration: const BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(20))
                            
                     
                          ),
                           width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.26,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                 Text(
              "Edit category",
              style: heading
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                style: quicksearch,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Laptop ",
                    hintStyle:quicksearch
                    ),
              ),
            ),
           
                                       
                                       
                              ],
                            ),
                          ),
                        ),
                     ),
                       Positioned(
                        bottom: 0,
                        left: 15,
                                          child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            SizedBox(width: MediaQuery.of(context).size.width*0.09,),
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Image.asset("assets/groud.png" , height: 60,)) ,
                            SizedBox(width: 10),
                      Image.asset("assets/delete.png" , height: 60,) ,
          
                            SizedBox(width: 10),
                            Image.asset("assets/yes.png" , height: 60,) ,
          
                          ],
                        )  ,
                  
                        
                        ),
                     
                    ]),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }



  


//this function is used for add new customer
  
  
  
 Future<void> additems(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Scaffold(
          backgroundColor: Color.fromRGBO(72 ,72, 72, 1),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [SizedBox(height: MediaQuery.of(context).size.height*0.1,),

                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.68,
                    child: Stack(children: [
                    
                    
                    //jhghj
                     Positioned(
          
                       child: Container(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          decoration: const BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(20))
                            
                     
                          ),
                           width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.64,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                          "Add new Item",
                                          style:heading
                                      ),
                                        SizedBox(
                                          height: MediaQuery.of(context).size.height * 0.02,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 20),
                                          child: Image.asset("assets/pic2.png"),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context).size.height * 0.02,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                          child:  DropdownButtonFormField<String>(
         decoration: InputDecoration(
         
         ),
         hint: Text('category' , style: quicksearch,),
         items: <String>['A', 'B', 'C', 'D'].map((String value) {
         return DropdownMenuItem<String>(
       value: value,
         child: new Text(value  , style: quicksearch,),
       );
      }).toList(),
     onChanged: (e) {
          },
),
                                      
                                      
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                          child: TextFormField(
                                            style: quicksearch,
                                            keyboardType: TextInputType.emailAddress,
                                            decoration: InputDecoration(
                              hintText: "Item name",
                              hintStyle: quicksearch
                              ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                          child: TextFormField(
                                            style: quicksearch,
                                            keyboardType: TextInputType.emailAddress,
                                            decoration: InputDecoration(
                              hintText: "Item quantity",
                              hintStyle: quicksearch
                              ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                          child: TextFormField(
                                            style: quicksearch,
                                            keyboardType: TextInputType.emailAddress,
                                            decoration: InputDecoration(
                              hintText: "Item price",
                              hintStyle: quicksearch
                              ),
                                          ),
                                        ),
                                        
                                       
                                       
                                       
                              ],
                            ),
                          ),
                        ),
                     ),
                       Positioned(
                        bottom: 0,
                        left: 45,
                                          child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            SizedBox(width: MediaQuery.of(context).size.width*0.09,),
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Image.asset("assets/groud.png" , height: 60,)) ,
                          
          
                            SizedBox(width: 20),
                            Image.asset("assets/yes.png" , height: 60,) ,
          
                          ],
                        )  ,
                  
                        
                        ),
                     
                    ]),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }



//this function is used for edit items

 Future<void> edititems(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Scaffold(
          backgroundColor: Color.fromRGBO(72 ,72, 72, 1),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [SizedBox(height: MediaQuery.of(context).size.height*0.1,),

                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.68,
                    child: Stack(children: [
                    
                    
                    //jhghj
                     Positioned(
          
                       child: Container(
                          padding: EdgeInsets.symmetric(vertical: 30),
                          decoration: const BoxDecoration(
                             color: Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(20))
                            
                     
                          ),
                           width: MediaQuery.of(context).size.width*0.8,
                    height: MediaQuery.of(context).size.height*0.64,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                          "Edit Item Details",
                                          style:heading
                                      ),
                                        SizedBox(
                                          height: MediaQuery.of(context).size.height * 0.02,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 30),
                                          child: Image.asset("assets/pic2.png"),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context).size.height * 0.02,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                          child: DropdownButtonFormField<String>(
         decoration: InputDecoration(
         
         ),
         hint: Text('Laptop' , style: quicksearch,),
         items: <String>['A', 'B', 'C', 'D'].map((String value) {
         return DropdownMenuItem<String>(
       value: value,
         child: new Text(value  , style: quicksearch,),
       );
      }).toList(),
     onChanged: (e) {
          },
),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                          child: TextFormField(
                                            style: quicksearch,
                                            keyboardType: TextInputType.emailAddress,
                                            decoration: InputDecoration(
                              hintText: "Dell Alienware",
                              hintStyle: quicksearch
                              ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                          child: TextFormField(
                                            style: quicksearch,
                                            keyboardType: TextInputType.emailAddress,
                                            decoration: InputDecoration(
                              hintText: "10",
                              hintStyle: quicksearch
                              ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                          child: TextFormField(
                                            style: quicksearch,
                                            keyboardType: TextInputType.emailAddress,
                                            decoration: InputDecoration(
                              hintText: "80,000",
                              hintStyle: quicksearch
                              ),
                                          ),
                                        ),
                                        
                                       
                                       
                                       
                              ],
                            ),
                          ),
                        ),
                     ),
                       Positioned(
                        bottom: 0,
                        left: 15,
                                          child:  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            SizedBox(width: MediaQuery.of(context).size.width*0.09,),
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Image.asset("assets/groud.png" , height: 60,)) ,
                            SizedBox(width: 10),
                      Image.asset("assets/delete.png" , height: 60,) ,
          
                            SizedBox(width: 10),
                            Image.asset("assets/yes.png" , height: 60,) ,
          
                          ],
                        )  ,
                  
                        
                        ),
                     
                    ]),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }



  function(){
       DropdownButton<String>(
    value: dropdownValue,
  
    onChanged: (String? newValue) {
      setState(() {
        dropdownValue = newValue!;
      });
    },
    items: <String>['One', 'Two', 'Free', 'Four']
      .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      })
      .toList(),
  );
  }

}








