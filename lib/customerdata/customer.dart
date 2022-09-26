import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phipros/theme.dart';


class CustomerData extends StatefulWidget {
  const CustomerData({super.key});

  @override
  State<CustomerData> createState() => _CustomerDataState();
}

class _CustomerDataState extends State<CustomerData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.03,),
            Padding(
              padding: const EdgeInsets.only(right:100.0),
              child: Text("Customer Data" , style: heading.copyWith(
                fontSize: 25
              ),),
            ),
               SizedBox(
                        height: MediaQuery.of(context).size.height * 0.007,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          style:quicksearch,
                          decoration: InputDecoration(
                              hintText: "Search customer...",
                              hintStyle: quicksearch.copyWith(

                              ),
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
                            addnewcusotmer(context);
                            },
                            child: const Text(
                              "Add new customer",
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
                            shrinkWrap: true,
                          
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                 childAspectRatio: 5/2,     
                                 mainAxisSpacing: 10,     
                                      crossAxisCount: 2,
                                                        ),
                              itemCount: 18,
                              itemBuilder: (BuildContext ctx, index) {
                                return InkWell(
                                  onTap: () {

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 3),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: (){
                                            _dialogBuilder(context);
                                          },
                                          child: Row(children: [
                                             CircleAvatar(
                                              radius: 25,
                                              backgroundColor: Colors.grey.shade300,
                                              child: Icon(Icons.person , color: Colors.grey.shade600,size: 45,)),
                                              Column(children: [
                                                Text("Daniyal Khan" , style: heading.copyWith(fontSize: 14),),
                                                Text("0203040340")
                                              ],)
                                          ]),
                                        ),
                                      ],
                                    ),
                                  ),
                               
                               
                                );
                              }),
                        ),
                      ),
                    
                    

          ],
        ),
      ),
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

 Future<void> addnewcusotmer(BuildContext context) {
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
                          "Add New Customer",
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
                                hintText: "Customer Name ",
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
                                hintText: "Customer Numb",
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























