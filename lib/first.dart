// import 'package:country_picker/country_picker.dart';
// import 'package:flutter/material.dart';
//
// class first extends StatefulWidget {
//   const first({Key? key}) : super(key: key);
//
//   @override
//   State<first> createState() => _firstState();
// }
//
// class _firstState extends State<first> {
//   TextEditingController t1 = TextEditingController();
//   TextEditingController t2 = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             children: [
//               Container(
//                 height: 250,
//                 margin: EdgeInsets.all(7),
//                 decoration: BoxDecoration(
//                   color: Colors.teal,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(7),
//                   ),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       height: 100,
//                       color: Color(0xfff0e8d2),
//                       margin: EdgeInsets.all(10),
//                       child: Column(
//                         children: [
//                           Container(
//                             padding: EdgeInsets.only(top: 10, left: 10),
//                             height: 50,
//                             alignment: Alignment.topLeft,
//                             child: Text("First Country :",
//                                 style: TextStyle(height: 1, fontSize: 18)),
//                           ),
//                           Container(
//                             child: TextField(
//                               onTap: () {
//                                 showCountryPicker(
//                                     context: context,
//                                     countryListTheme: CountryListThemeData(
//                                       flagSize: 25,
//                                       backgroundColor: Colors.white,
//                                       textStyle: TextStyle(
//                                           fontSize: 16, color: Colors.blueGrey),
//                                       borderRadius: BorderRadius.only(
//                                         topLeft: Radius.circular(20.0),
//                                         topRight: Radius.circular(20.0),
//                                       ),
//                                       inputDecoration: InputDecoration(
//                                         labelText: 'Search',
//                                         hintText: 'Search your counrty',
//                                         prefixIcon: Icon(Icons.search),
//                                         border: OutlineInputBorder(
//                                           borderSide: BorderSide(
//                                             color: Color(0xFF8C98A8),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     onSelect: (Country country) {
//                                       setState(() {
//                                         t1.text = country.example;
//                                       });
//                                     });
//                               },
//                               decoration: InputDecoration(
//                                 hintText: "Select Country",
//                                 filled: true,
//                               ),
//                               controller: t1,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     // SizedBox(height: 30,),
//                     Container(
//                       height: 100,
//                       color: Color(0xfff0e8d2),
//                       margin: EdgeInsets.all(10),
//                       child: Column(
//                         children: [
//                           Container(
//                             color: Color(0xfff0e8d2),
//                             child: Column(
//                               children: [
//                                 Container(
//                                   padding: EdgeInsets.only(top: 10, left: 10),
//                                   height: 50,
//                                   alignment: Alignment.topLeft,
//                                   child: Text("Second Country :",
//                                       style:
//                                           TextStyle(height: 1, fontSize: 18)),
//                                 ),
//                                 Container(
//                                   child: TextField(
//                                     onTap: () {
//                                       showCountryPicker(
//                                           context: context,
//                                           countryListTheme:
//                                               CountryListThemeData(
//                                             flagSize: 25,
//                                             backgroundColor: Colors.white,
//                                             textStyle: TextStyle(
//                                                 fontSize: 16,
//                                                 color: Colors.blueGrey),
//                                             borderRadius: BorderRadius.only(
//                                               topLeft: Radius.circular(20.0),
//                                               topRight: Radius.circular(20.0),
//                                             ),
//                                             inputDecoration: InputDecoration(
//                                               labelText: 'Search',
//                                               hintText:
//                                                   'Search your counrty',
//                                               prefixIcon: Icon(Icons.search),
//                                               border: OutlineInputBorder(
//                                                 borderSide: BorderSide(
//                                                   color: Color(0xFF8C98A8),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           onSelect: (Country country) {
//                                             setState(() {
//                                               t2.text = country.displayName;
//                                             });
//                                           });
//                                     },
//                                     decoration: InputDecoration(
//                                       hintText: "Select Country",
//                                       filled: true,
//                                     ),
//                                     controller: t2,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
