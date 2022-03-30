import 'package:flutter/material.dart';
import 'textInput.dart';
import 'Secondscreen.dart';
import 'explore.dart';

class homescreen extends StatelessWidget{
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Tourism App')),
      drawer: Drawer(
        child: ListView(
          children:  <Widget> [
            DrawerHeader(
              child: Text(''),
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.cover
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => homescreen()
                ));
              },
            ),
            ListTile(
              title: Text('Explore'),
              trailing: Icon(Icons.arrow_forward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => explore()
                ));
              },
            )
          ],
        ),
      ),

      body: Container(
        child: Column(
          children: [
            Image.asset('assets/images/tourism.jpg', alignment: Alignment.center,),
            textInput(),
            ElevatedButton(
                child: Text('Explore'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Secondscreen(),)
                  );
                }
                ),
          ],
        ),
      ),
    );
  }
}