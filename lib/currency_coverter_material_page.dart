// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class CurrencyConverterPage extends StatefulWidget{

    const CurrencyConverterPage({super.key});

    @override
    State<CurrencyConverterPage> createState(){
    return _CurrencyConverterPageState();
    }
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage>{


  double result=0;

  final TextEditingController textEditingController= TextEditingController();
    @override
    Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: const Text("Currency Converter"),
        backgroundColor: const Color.fromARGB(255, 65, 65, 167),
      ),
      backgroundColor: const Color.fromRGBO(107, 107, 160, 1),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Currency Converter",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 15, 15, 14)),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child:  TextField(
              controller: textEditingController,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
              decoration: const InputDecoration(
                hintText: "Please enter amount in USD \$",
                hintStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 165, 161, 161)),
                prefix: Icon(Icons.monetization_on_rounded),
                prefixIconColor: Colors.black,
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromARGB(255, 23, 19, 2),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.amber,
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  double op=double.parse(textEditingController.text)*80;
                   setState(() {
                     
                    result=op;
                   });
                  
                },
                child: const Text(
                  "Convert",
                )),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
  
            child:  Text(
              'INR ${result!=0 ? result.toStringAsFixed(2):0}',
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                  
                  // backgroundColor: Colors.white,
                  )
                  ,
            
            ),
          ),
        ],
      )),
    );
  }
}
