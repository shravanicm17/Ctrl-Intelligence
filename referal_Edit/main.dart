import 'package:flutter/material.dart';
import 'edit_hosp_info.dart';
import 'edit_medical_info.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Edit Referal info';


      
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title),
        centerTitle: true,
        ),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.local_hospital),
              title: Text('Ram Kumar'),
              subtitle: Text('Apollo Hospital, Pune: Cardiologist\n2nd July 21'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Edit hospital info'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => hospital_info()));
                  },
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('Edit medical info'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AutofillDemo()));
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
            const ListTile(
              leading: Icon(Icons.local_hospital),
              title: Text('Ravi Shankar'),
              subtitle: Text('Sassoon Hospital, Pune: Gastroenterologists\n3rd August 21'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Edit hospital info'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => hospital_info()));
                  },
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('Edit medical info'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AutofillDemo()));
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
            const ListTile(
              leading: Icon(Icons.local_hospital),
              title: Text('Laxmi Patil'),
              subtitle: Text('Nair Hospital, Mumbai: Neurologists\n20th October'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Edit hospital info'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => hospital_info()));
                  },
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: const Text('Edit medical info'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AutofillDemo()));
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
