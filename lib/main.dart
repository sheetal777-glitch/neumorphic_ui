import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Neumorphic(),
    ),
  );
}

class Neumorphic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFF5F2EA),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: Column(
           children :[
            SizedBox(
              height: MediaQuery.of(context).viewPadding.top + 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Living Room',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),

                    Row(
                    
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 10,),
                        Text(
                  'Connected',
                  style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                  ),
                ),
                      ],
                    ),
                  ],
                ),
                Spacer(), 

                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                  color: Color(0xFFF5F2EA),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      offset: Offset(5, 5),
                      blurRadius: 5,
                    ),

                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, -5),
                      blurRadius: 10,
                    )
                  ]
                ),
                  child: Icon(Icons.apps, size: 35,color: Colors.grey.shade700,),
                ),
              ],
            ),

            SizedBox(height: 50,),

            Stack(alignment: Alignment.center,
              children: [
                Container(
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF5F2EA),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      offset: Offset(5, 5),
                      blurRadius: 10,
                    ),

                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-5, -5),
                      blurRadius: 10,
                    )
                  ]
              ),
            ),
           
            Container(
            height: 140,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              shape: BoxShape.circle,
              gradient:LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.red,
                  Colors.red.shade500,
                  Colors.orange,
                  Colors.orange.shade300,
                  Colors.yellow,
                ]
                ),
            ),
            
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(205, 60, 0, 0),
              child: Container(
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF5F2EA),
                gradient:LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xffc6c6c6),
                  Color(0xffffffff),
                ]   
                ),  
              ),
              ),
            ),
//*************************                    ********************************//
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('73', style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 60,
                  color: Colors.white,
                  
                ),),

                Text('°',style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                ),),
              ],
            ),
              ],
            ),
            
            
            
            
            
            
            Spacer(),



// ******************** BOTTOM CONTAINER *****************//
            Padding(
              padding: const EdgeInsets.all(30.0),
              child : Container(
                padding: EdgeInsets.all(20),
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F2EA),
                  borderRadius: BorderRadius.circular(20),
                  gradient:LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xffc6c6c6),
                  Color(0xffffffff),
                ]   
                ), 
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('OUTSIDE',style: TextStyle(
                          fontSize: 10,
                          letterSpacing: 1,
                        ),),
                        Row(
                          children: [
                            Text('45',style: TextStyle(
                              fontSize: 30,
                            ),),

                            Text('°',style: TextStyle(
                              fontSize: 30,
                            ),),
                          ],
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Text('HUMIDITY',style: TextStyle(
                          fontSize: 10,
                          letterSpacing: 1,
                        ),),
                        Row(
                          children: [
                            Text('20',style: TextStyle(
                              fontSize: 30,
                            ),),

                             Padding(
                               padding: const EdgeInsets.only(bottom: 10),
                               child: Text('%',style: TextStyle(
                                fontSize: 22,
                            ),),
                             ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



