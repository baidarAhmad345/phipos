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
     

  var list=[
    "1","2","3","4"
  ];
  var initialvalue="1";



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
                                itemadddialog();
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
                                catadddialog();
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
                                        cateditdialog();
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

//this function is used for add category
  catadddialog() {
    AlertDialog alert = AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: Container(
        decoration: const BoxDecoration(),
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.8,
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
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                style: quicksearch,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Category name",
                    hintStyle: quicksearch
                    ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color.fromRGBO(255, 160, 0, 1),
                    Color.fromRGBO(255, 233, 0, 1),

                    //add more colors
                  ]),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        color:
                            Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                        blurRadius: 5) //blur radius of shadow
                  ]),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onSurface: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Add",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

//this function is for edit category
  cateditdialog() {
    AlertDialog alert = AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      content: Container(
        decoration: const BoxDecoration(),
        height: MediaQuery.of(context).size.height * 0.34,
        width: MediaQuery.of(context).size.width * 0.8,
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
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextFormField(
                style: quicksearch,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Laptop ",
                    hintStyle:quicksearch
                    ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(colors: [
                    Color.fromRGBO(255, 160, 0, 1),
                    Color.fromRGBO(255, 233, 0, 1),

                    //add more colors
                  ]),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        color:
                            Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                        blurRadius: 5) //blur radius of shadow
                  ]),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onSurface: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Save",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.6,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.white),
                    onPressed: () {},
                    child: Text(
                      "Remove",
                      style: GoogleFonts.quicksand(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ))),
          ],
        ),
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }




  //this function is used for add new items
  itemadddialog() {
    AlertDialog alert = AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),

      // titlePadding: EdgeInsets.only(left: 20),
      // titleTextStyle: GoogleFonts.quicksand(fontSize: 34 , fontWeight:FontWeight.bold),
      content: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 0.3,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Add new item",
                style: heading
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Image.asset("assets/pic2.png"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  style: quicksearch,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.arrow_drop_down,
                            size: 50,
                            color: Colors.black,
                          )),
                      hintText: "Category",
                      hintStyle: quicksearch
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  style:quicksearch,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Item name",
                      hintStyle:quicksearch
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  style: quicksearch,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "Item price",
                      hintStyle: quicksearch
                      )
                      ,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(255, 160, 0, 1),
                      Color.fromRGBO(255, 233, 0, 1),

                      //add more colors
                    ]),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const <BoxShadow>[
                      BoxShadow(
                          color:
                              Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                          blurRadius: 5) //blur radius of shadow
                    ]),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      onSurface: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Add",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ),
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

//this function is used for edit items
  itemeditdialog() {
    AlertDialog alert = AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),

      // titlePadding: EdgeInsets.only(left: 20),
      // titleTextStyle: GoogleFonts.quicksand(fontSize: 34 , fontWeight:FontWeight.bold),
      content: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        height: MediaQuery.of(context).size.height * 0.77,
        width: MediaQuery.of(context).size.width * 0.3,
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
              Image.asset("assets/pic2.png"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  style: quicksearch,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                          onTap: () {
                   
                    DropdownButton(
                      value: initialvalue,
                      items: list.map((e) {
                        return DropdownMenuItem(
                          value: e,
                          child: Text(e));
                      }).toList(), onChanged: (String? value) { 
                        setState(() {
                          initialvalue=value!;
                        });
                       },
                    );

                          },
                          child: const Icon(
                            Icons.arrow_drop_down,
                            size: 50,
                            color: Colors.black,
                          )),
                      hintText: "Laptop",
                      hintStyle: quicksearch
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  style: quicksearch,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "80,000",
                      hintStyle: quicksearch
                      ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
             
             
             
            
           
            ],
          ),
        ),
      ),
   
   
   
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }



//this function is used for add new customer
  
  
  
     Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Scaffold(
          backgroundColor: Color.fromRGBO(72 ,72, 72, 1),
          body: Center(
            child: Container(
              width: MediaQuery.of(context).size.width*0.7,
              height: MediaQuery.of(context).size.height*0.37,
              child: Stack(children: [
              
              
              
               Positioned(

                 child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    decoration: const BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.all(Radius.circular(20))
                      
               
                    ),
                     width: MediaQuery.of(context).size.width*0.7,
              height: MediaQuery.of(context).size.height*0.33,
                    child: Column(
                      children: [
                        Text(
                          "Edit Customer Details",
                          style: heading
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextFormField(
                            style: quicksearch,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: "Danyal ",
                                hintStyle:quicksearch
                                ),
                          ),
                        ),
                       Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: TextFormField(
                            style: quicksearch,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: "0321-34245434 ",
                                hintStyle:quicksearch
                                ),
                          ),
                        ),
                      
                    
                      ],
                    ),
                  ),
               ),
                 Positioned(
                  bottom: 0,
                  left: 30,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
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
        );
      },
    );
  }}

//this function is used for edit customer

 Future<void> edititems(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return Scaffold(
          backgroundColor: Color.fromRGBO(72 ,72, 72, 1),
          body: Center(
            child: Container(
              width: MediaQuery.of(context).size.width*0.7,
              height: MediaQuery.of(context).size.height*0.9,
              child: Stack(children: [
              
              
              
               Positioned(

                 child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    decoration: const BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.all(Radius.circular(20))
                      
               
                    ),
                     width: MediaQuery.of(context).size.width*0.6,
              height: MediaQuery.of(context).size.height*0.8,
                    child: Column(
                      children: [
                        Text(
                "Edit Item Details",
                style:heading
                              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Image.asset("assets/pic2.png"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  style: quicksearch,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      suffixIcon: InkWell(
                          onTap: () {
                   
                    

                          },
                          child: const Icon(
                            Icons.arrow_drop_down,
                            size: 50,
                            color: Colors.black,
                          )),
                      hintText: "Laptop",
                      hintStyle: quicksearch
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  style: quicksearch,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      hintText: "80,000",
                      hintStyle: quicksearch
                      ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
             
             
             
                      ],
                    ),
                  ),
               ),
                 Positioned(
                  bottom: 0,
                  left: 30,
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
                      Image.asset("assets/yes.png" , height: 60,) ,

                    ],
                  )  ,
            
                  
                  ),
               
              ]),
            ),
          ),
        );
      },
    );
  }










