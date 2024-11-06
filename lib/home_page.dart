import 'package:flutter/material.dart';
import 'app_controller.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        actions: [
          CustomSwitch(),
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Show Snackbar',
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("/");
            }
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Contador: $counter'),
                CustomSwitch(),
              ],
            ),
            Row(
              children: [
              ],
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.access_alarm),
        onPressed: (){
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
  class CustomSwitch extends StatelessWidget {
  
    @override
    Widget build(BuildContext context) {
      return Switch(
          value: AppController.instance.isDarkTheme,
          onChanged: (value) {
            AppController.instance.changeTheme();
          },
      );
    }
  }