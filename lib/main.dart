import 'package:flutter/material.dart';
/*

 */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool algorithms=false;
  bool javabook=false;
  bool dartbook=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text("select your favoirte books"),
           CheckboxListTile(
              tileColor: Colors.pinkAccent,
               activeColor: Colors.lime,
               checkColor: Colors.blueAccent,
               secondary: algorithms?Icon(Icons.book,color:Colors.green):
               Icon(Icons.book,color:Colors.black),
               title: Text("Introduction to algorithms"),
               value:algorithms,
               onChanged: (value){
                setState(() {
                  algorithms=value!;
                });
           }),
            CheckboxListTile(
                tileColor: Colors.green.shade100,
                activeColor: Colors.lime,
                checkColor: Colors.blueAccent,
                secondary: javabook?Icon(Icons.book,color:Colors.green):
                Icon(Icons.book,color:Colors.black),
                title: Text("Introduction to algorithms"),
                value:javabook,
                onChanged: (value){
                  setState(() {
                    javabook=value!;
                  });
                }),
            CheckboxListTile(
                tileColor: Colors.orange.shade100,
                activeColor: Colors.lime,
                checkColor: Colors.blueAccent,
                secondary: dartbook?Icon(Icons.book,color:Colors.green):
                Icon(Icons.book,color:Colors.black),
                title: Text("Introduction to algorithms"),
                value:dartbook,
                onChanged: (value){
                  setState(() {
                    dartbook=value!;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
