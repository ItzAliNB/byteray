import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF4A4E69),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            'BYTERAY',
            style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          backgroundColor: Color(0xFF22223B),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'BYTERAY',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(color: Colors.white24),
                ListTile(
                  title: Text('Home', style: TextStyle(color: Colors.white70)),
                  leading: Icon(Icons.home, color: Colors.white70),
                ),
                ListTile(
                  title: Text('Servers', style: TextStyle(color: Colors.white70)),
                  leading: Icon(Icons.dns, color: Colors.white70),
                ),
                ListTile(
                  title: Text('Contact', style: TextStyle(color: Colors.white70)),
                  leading: Icon(Icons.contact_mail, color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.purpleAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.blueAccent.withOpacity(0.5),
                  blurRadius: 20,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: Icon(
              Icons.power_settings_new,
              size: 100,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
