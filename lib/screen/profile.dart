// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:smart_attendance/screen/getatt.dart';
// import 'package:smart_attendance/screen/home.dart';
// import 'package:smart_attendance/screen/mark.dart';

// class Profile extends StatelessWidget {
//   int pageIndex = 0;

// final pages = [
// 	const HomePage(),
// 	const Mark(),
// 	const Get(),
// 	const Get(),
// ];
// Container buildMyNavBar(BuildContext context) {
// 	return Container(
// 	height: 60,
// 	decoration: BoxDecoration(
// 		color: Theme.of(context).primaryColor,
// 		borderRadius: const BorderRadius.only(
// 		topLeft: Radius.circular(20),
// 		topRight: Radius.circular(20),
// 		),
// 	),
// 	child: Row(
// 		mainAxisAlignment: MainAxisAlignment.spaceAround,
// 		children: [
// 		IconButton(
// 			enableFeedback: false,
// 			onPressed: () {
// 			setState(() {
// 				pageIndex = 0;
// 			});
// 			},
// 			icon: pageIndex == 0
// 				? const Icon(
// 					Icons.home_filled,
// 					color: Colors.white,
// 					size: 35,
// 				)
// 				: const Icon(
// 					Icons.home_outlined,
// 					color: Colors.white,
// 					size: 35,
// 				),
// 		),
// 		IconButton(
// 			enableFeedback: false,
// 			onPressed: () {
// 			setState(() {
// 				pageIndex = 1;
// 			});
// 			},
// 			icon: pageIndex == 1
// 				? const Icon(
// 					Icons.work_rounded,
// 					color: Colors.white,
// 					size: 35,
// 				)
// 				: const Icon(
// 					Icons.work_outline_outlined,
// 					color: Colors.white,
// 					size: 35,
// 				),
// 		),
// 		IconButton(
// 			enableFeedback: false,
// 			onPressed: () {
// 			setState(() {
// 				pageIndex = 2;
// 			});
// 			},
// 			icon: pageIndex == 2
// 				? const Icon(
// 					Icons.widgets_rounded,
// 					color: Colors.white,
// 					size: 35,
// 				)
// 				: const Icon(
// 					Icons.widgets_outlined,
// 					color: Colors.white,
// 					size: 35,
// 				),
// 		),
// 		IconButton(
// 			enableFeedback: false,
// 			onPressed: () {
// 			setState(() {
// 				pageIndex = 3;
// 			});
// 			},
// 			icon: pageIndex == 3
// 				? const Icon(
// 					Icons.person,
// 					color: Colors.white,
// 					size: 35,
// 				)
// 				: const Icon(
// 					Icons.person_outline,
// 					color: Colors.white,
// 					size: 35,
// 				),
// 		),
// 		],
// 	),
// 	);
// }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  pages[pageIndex],
// 	    bottomNavigationBar: buildMyNavBar(context),
//       Center(
//         child: SafeArea(
//           child: Column(
            
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: NetworkImage(
//                       "assets/images/loogo.png"
//                     ),
//                     fit: BoxFit.cover
//                   )
//                 ),
//               child: Container(
//                 width: double.infinity,
//                 height: 200,
//                 child: Container(
//                   alignment: Alignment(0.0,2.5),
//                   child: CircleAvatar(
//                     backgroundImage: NetworkImage(
//                         "https://avatars.githubusercontent.com/u/85579071?s=400&u=0aab6a58d172503f261b1031c7c83ce34660edb8&v=4"
//                     ),
//                     radius: 60.0,
//                   ),
//                 ),
//               ),
//               ),

//               SizedBox(
//                 height: 60,
//               ),
//               Text(
//                 "Shubham Kumar"
//                 ,style: TextStyle(
//                   fontSize: 25.0,
//                   color:Colors.blueGrey,
//                   letterSpacing: 2.0,
//                   fontWeight: FontWeight.w400
//               ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 "Noida, India"
//                 ,style: TextStyle(
//                   fontSize: 18.0,
//                   color:Colors.black45,
//                   letterSpacing: 2.0,
//                   fontWeight: FontWeight.w300
//               ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 "Front End Developer"
//                 ,style: TextStyle(
//                   fontSize: 15.0,
//                   color:Colors.black45,
//                   letterSpacing: 2.0,
//                   fontWeight: FontWeight.w300
//               ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Card(
//                 margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),

//                 elevation: 2.0,
//                 child: Padding(
//                     padding: EdgeInsets.symmetric(vertical: 12,horizontal: 30),
//                     child: Text("Skill Sets",style: TextStyle(
//                         letterSpacing: 2.0,
//                         fontWeight: FontWeight.w300
//                     ),))
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               // Text(
//               //   "App Developer || Digital Marketer"
//               //   ,style: TextStyle(
//               //     fontSize: 18.0,
//               //     color:Colors.black45,
//               //     letterSpacing: 2.0,
//               //     fontWeight: FontWeight.w300
//               // ),
//               // ),
//               Card(
//                 margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Expanded(
//                         child: Column(
//                           children: [
//                             Text("Project",
//                               style: TextStyle(
//                                   color: Colors.blueAccent,
//                                   fontSize: 22.0,
//                                   fontWeight: FontWeight.w600
//                               ),),
//                             SizedBox(
//                               height: 7,
//                             ),
//                             Text("15",
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 22.0,
//                                   fontWeight: FontWeight.w300
//                               ),)
//                           ],
//                         ),
//                       ),
//                       Expanded(
//                         child:
//                         Column(
//                           children: [
//                             Text("Points",
//                               style: TextStyle(
//                                   color: Colors.blueAccent,
//                                   fontSize: 22.0,
//                                   fontWeight: FontWeight.w600
//                               ),),
//                             SizedBox(
//                               height: 7,
//                             ),
//                             Text("2000",
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 22.0,
//                                   fontWeight: FontWeight.w300
//                               ),)
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 50,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   RaisedButton(
//                     onPressed: (){

//                     },
//                     shape:  RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(80.0),
//                     ),
//                     child: Ink(
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                             begin: Alignment.centerLeft,
//                             end: Alignment.centerRight,
//                             colors: [Colors.pink,Colors.redAccent]
//                         ),
//                         borderRadius: BorderRadius.circular(30.0),

//                       ),
//                       child: Container(
//                         constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
//                         alignment: Alignment.center,
//                         child: Text(
//                           "Log Out",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 12.0,
//                               letterSpacing: 2.0,
//                               fontWeight: FontWeight.w300
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   RaisedButton(
//                     onPressed: (){

//                     },
//                     shape:  RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(80.0),
//                     ),
//                     child: Ink(
//                       decoration: BoxDecoration(
//                         gradient: LinearGradient(
//                             begin: Alignment.centerLeft,
//                             end: Alignment.centerRight,
//                             colors: [Colors.pink,Colors.redAccent]
//                         ),
//                         borderRadius: BorderRadius.circular(80.0),

//                       ),
//                       child: Container(
//                         constraints: BoxConstraints(maxWidth: 100.0,maxHeight: 40.0,),
//                         alignment: Alignment.center,
//                         child: Text(
//                           "Report a Problem",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 12.0,
//                               letterSpacing: 2.0,
//                               fontWeight: FontWeight.w300
//                           ),
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       )
      
//     );
//   }
// }