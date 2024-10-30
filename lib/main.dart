import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController text1=TextEditingController();
  TextEditingController text2=TextEditingController();
  double sum=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
      appBar:  AppBar(
        // backgroundColor: Colors.blue,
        shadowColor:Colors.black,  
        elevation: 5,
        centerTitle: true,      
        title:const Text('Mobile003',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w800),)
      ),
      body: Column(
        children: [
           const SizedBox(height: 50),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Text("Narx -> $sum",style: const TextStyle(color: Colors.black,fontSize:20 ,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic) ),
            decoration: BoxDecoration(
              color: Colors.cyanAccent,
               boxShadow: const[
                 BoxShadow(
                  color: Colors.black,
                  spreadRadius: 1,
                  blurRadius: 15,
                  offset: Offset(10, 10),
                )
              ],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 2,color: Colors.black,strokeAlign: BorderSide.strokeAlignCenter,style: BorderStyle.solid)
            ), 
          ),
           const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: text1,          
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
              
                hintText: 'gaz miqdori',
                helperText: 'Sariflangan gaz narxini kiriting :)',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: text2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                helperText: 'Kub metr gaz narxini kiriting :)',
                hintText: 'gaz narxi',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ),
          ),
         const SizedBox(height: 30),
          ElevatedButton(
            child: const Text("Calculate"),
            onPressed: (){
              setState(() {
                double gasAmount = double.tryParse(text1.text) ?? 0;
                  double pricePerCubicMeter = double.tryParse(text2.text) ?? 0;
                  sum = gasAmount * pricePerCubicMeter;

              });
            },
          ),
         
        ],
      ),
    ),
    );
  }
}