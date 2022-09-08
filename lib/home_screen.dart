import 'package:flutter/material.dart';
import 'package:some_advance_course/screen_two.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Drawer'),
        centerTitle: true,
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            // DrawerHeader(
            //     child: Text('vipul'))
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff764abc)
              ),
               currentAccountPicture: CircleAvatar(
                 backgroundImage: NetworkImage('https://images.pexels.com/photos/13219094/pexels-photo-13219094.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
               ),
               accountName: Text('Vipul Paliwal '),
                accountEmail: Text('vpaliwal456@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Page 1'),
              onTap: (){
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('Page 2'),
              tileColor: Colors.green,
              onTap: (){
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text('Logout'),
              
              onTap: (){
                Navigator.pushNamed(context, HomeScreen.id);
              },
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                // Navigator.push(
                //     context,MaterialPageRoute(
                //     builder: (context)=> ScreenTwo() ),
                // );
                Navigator.pushNamed(
                    context, ScreenTwo.id);
              },
                child: const Text('Screen 1'),
            ),
          )
        ],
      ),
    );
  }
}
