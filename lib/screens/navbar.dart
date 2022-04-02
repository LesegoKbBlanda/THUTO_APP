import 'package:flutter/material.dart';
import 'package:thuto_app/flashcardmain.dart';
import 'package:thuto_app/screens/login_screen.dart';
import 'package:thuto_app/screens/main_menu.dart';
import 'package:thuto_app/todomain.dart';

class NavBar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Oflutter.com'),
            accountEmail: Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://www.seekpng.com/png/full/41-410093_circled-user-icon-user-profile-icon-png.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.task),
            title: Text('To Do List'),
            onTap: () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Mytodo())),
          ),
          ListTile(
            leading: Icon(Icons.track_changes),
            title: Text('Track progress'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Exam papers'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Mock papers'),
          ),
          ListTile(
            leading: Icon(Icons.card_membership),
            title: Text('Flashcards'),
            onTap: () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MyFlashcard())),
          ),
          ListTile(
            leading: Icon(Icons.quiz),
            title: Text('Quiz'),
            onTap: () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MainMenu())),
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Discussion forum'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('log Out'),
            leading: Icon(Icons.logout),
            onTap: () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen())),
          ),
        ],
      ),
    );
  }
}