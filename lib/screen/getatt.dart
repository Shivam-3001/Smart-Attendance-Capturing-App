import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Get extends StatefulWidget {
  const Get({ Key? key }) : super(key: key);

  @override
  State<Get> createState() => _GetState();
}

class _GetState extends State<Get> {
  get dateinput => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title:Text("Request Leaves"), 
            backgroundColor: Colors.purple[300], //background color of app bar
        ),
        body:Container(
          padding: EdgeInsets.all(15),
          // height:350,
          // child: Row(
          //   children: [
          //   ],
          // ),
          child: Column(
            
            children: [
              SizedBox(height: 10,),
              Text("Enter The Number of Days : ",
                style: TextStyle(
                  fontWeight: FontWeight. bold,
                  fontSize: 18
                ),
              ),
              SizedBox(height: 10,),
              Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter the number of days',
                    // hintText: 'Enter Valid Employee ID as AB1250'
                    ),
              ),
            ),
            SizedBox(height: 10,),
            Text("From : ",
                style: TextStyle(
                  // fontWeight: FontWeight. bold,
                  fontSize: 15
                ),
              ),
              // SizedBox(height: 10,),
              Center( 
                 child:TextField(
                    controller: dateinput, //editing controller of this TextField
                    decoration: InputDecoration( 
                       icon: Icon(Icons.calendar_today), //icon of text field
                       labelText: "Select Date" //label text of field
                    ),
                    readOnly: true,  //set it true, so that user will not able to edit text
                    onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                          context: context, initialDate: DateTime.now(),
                          firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2101)
                      );
                      
                      if(pickedDate != null ){
                          print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); 
                          print(formattedDate); //formatted date output using intl package =>  2021-03-16
                            //you can implement different kind of Date Format here according to your requirement

                          setState(() {
                             var dateinput;
                             dateinput.text = formattedDate; //set output date to TextField value. 
                          });
                      }else{
                          print("Date is not selected");
                      }
                    },
                 )
              ),
              SizedBox(height: 20,),
              Text("To :",
                style: TextStyle(
                  // fontWeight: FontWeight. bold,
                  fontSize: 15
                ),
              ),
              Center( 
                 child:TextField(
                    controller: dateinput, //editing controller of this TextField
                    decoration: InputDecoration( 
                       icon: Icon(Icons.calendar_today), //icon of text field
                       labelText: "Select Date" //label text of field
                    ),
                    readOnly: true,  //set it true, so that user will not able to edit text
                    onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                          context: context, initialDate: DateTime.now(),
                          firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                          lastDate: DateTime(2101)
                      );
                      
                      if(pickedDate != null ){
                          print(pickedDate);  //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate); 
                          print(formattedDate); //formatted date output using intl package =>  2021-03-16
                            //you can implement different kind of Date Format here according to your requirement

                          setState(() {
                             var dateinput;
                             dateinput.text = formattedDate; //set output date to TextField value. 
                          });
                      }else{
                          print("Date is not selected");
                      }
                    },
                 )
              ),
              SizedBox(height: 20,),
              Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.purple[300], borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Get()));
                },
                child: Text(
                  'Request',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 300,),
            Text("Your Request is approved by your HR. So Stay Tune!!!!!!")
            ],
          )
          
        )
    );
  }
}