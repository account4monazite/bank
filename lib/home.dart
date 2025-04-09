import 'package:flutter/material.dart';

import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(1, 250, 252, 250),
        title:const Text("Bank Name"),

      ),
      drawer: _Drawer(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 370,
                height: 200,
                decoration: BoxDecoration(
                  border: const GradientBoxBorder(
                    gradient: LinearGradient(colors: [Colors.blue, Colors.blueAccent]),
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Text(
                    "View Account Balance",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              SizedBox(height:10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildOptionCard("Bills"),
                  SizedBox(width: 10),
                  _buildOptionCard("Transfer"),
                ],
              ),
              SizedBox(height:10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildOptionCard("Transaction History"),
                  SizedBox(width: 10),
                  _buildOptionCard("Manage Cards"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

Widget _Drawer(){
  return Drawer(
    child:ListView(
      padding: EdgeInsets.zero,
      children: [DrawerHeader(child: Text("Menu"),)
      ,ListTile(title: Text("Account setting")),
     ListTile(title: Text("Refferal for Rewards!"),),
     ListTile(title:Text("Logout")),
     ListTile(title:Text("General Settings"))
      ],
    
    )
  );
}

  Widget _buildOptionCard(String text) {
    return Container(
      width: 180,
      height: 200,
      decoration: BoxDecoration(
        border: const GradientBoxBorder(
          gradient: LinearGradient(colors: [Colors.blue, Colors.blueAccent]),
          width: 3,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
