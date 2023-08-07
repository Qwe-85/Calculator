import 'package:flutter/material.dart';
import 'package:project/home_screen.dart';
import 'package:project/screen_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Add 'Key?' before 'key'

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        ScreenTwo.id: (context) => ScreenTwo(),
      },
      // home: Scaffold
      //   appBar: AppBar(
      //     title: const Text('random'),
      //   ),
      //   body: Center(
      //     // Wrap the Column with Center widget
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         Expanded(
      //           child: ListView.builder(
      //             itemCount: 5,
      //             itemBuilder: (context, index) {
      //               return const ListTile(
      //                 leading: CircleAvatar(
      //                   radius: 50,
      //                   backgroundColor: Colors.red,
      //                   child: Text('S'),
      //                 ),
      //                 title: Text('anishTech'),
      //                 trailing: Text('5:33pm'),
      //                 subtitle: Text('lets learn something'),
      //               );
      //             },
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
/*TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.blue,
                  enabled: true,
                  decoration: InputDecoration(
                    fillColor: Colors.green.withOpacity(.3),
                    filled: true,
                    prefixIcon: const Icon(Icons.email),
                    hintText: 'Email',
                    labelText: 'Email',
                    hintStyle: const TextStyle(fontSize: 14, color: Colors.red),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 221, 128, 121),
                            width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.teal, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onChanged: (value) {
                    print(value);
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                  
                  )*/