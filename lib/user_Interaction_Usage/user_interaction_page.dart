import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserInteractionPage extends StatefulWidget {
  const UserInteractionPage({super.key});

  @override
  State<UserInteractionPage> createState() => _UserInteractionPageState();
}


class _UserInteractionPageState extends State<UserInteractionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: const Text("User Interaction", style: TextStyle(color: Colors.black,),),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text("Do you want to delete"),
                    action: SnackBarAction(label: "Yes", onPressed:(){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Deleted")));
                    }),
                  )
                );
              }, 
              child: Text("SnackBar 1", style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text("Do you want to delete", style: TextStyle(color: Colors.amber),),
                    action: SnackBarAction(label: "Yes", onPressed:(){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("Deleted")));
                    }, textColor: Colors.green),
                  )
                );
              }, 
              child: Text("SnackBar(Special)", style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("Alert"),
                    content: const Text("This is an alert"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child:Text("Cancel"))
                    ],
                  );
                });
              }, 
              child: Text("Alert", style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(context: context, builder: (BuildContext context){
                  return AlertDialog(
                    title: Text("Close Program"),
                    content: TextField(
                      decoration: InputDecoration(
                        labelText: 'Confirm',
                        border: OutlineInputBorder(),
                      ),
                      onSubmitted: (value) {
                        if (value.toLowerCase() == "confirm") {
                          SystemNavigator.pop();
                        }
                      },
                    ),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("Cancel")),
                    ],
                  );
                });
              }, 
              child: Text("Close Program", style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}