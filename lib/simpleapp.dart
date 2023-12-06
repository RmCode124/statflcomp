import 'package:flutter/material.dart';

class simple extends StatelessWidget{
var no1controller = TextEditingController();
var no2controller = TextEditingController();
var mresult =0;


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(

        title: Text("widget"),

      ),
      body: Column(
        children: [

          Text("Addition ",style: TextStyle(fontSize: 34),),
          SizedBox(
            height: 11,
          ),

          TextField(
            controller: no1controller,
            decoration: InputDecoration(
              hintText: 'Enter the number',
              label: Text("number 1"),
                border:OutlineInputBorder(
                  borderRadius: BorderRadius.circular(21)


                ),
              ),
            ),

          SizedBox(
            height: 11,
          ),
          TextField(
            controller:no2controller,
            decoration: InputDecoration(
                hintText: 'Enter the number',
                label: Text("number 2"),
                    border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),



                    ),
                ),
            ),

          ElevatedButton(onPressed: (){

            var no1  = int.parse(no1controller.text.toString());

            var no2 = int.parse(no2controller.text.toString());

            mresult = no1 + no2;
            print("Sum : $mresult");


          }, child: Text("Add")),

          Text("$mresult", style: TextStyle(fontSize: 21),)

        ],
      ),

    );
  }
}