//
// import 'package:flutter/material.dart';
//
// class TextFieldListView extends StatefulWidget {
//   @override
//   _TextFieldListViewState createState() => _TextFieldListViewState();
// }
//
// class _TextFieldListViewState extends State<TextFieldListView> {
//   List<String> textFields = ['Text Field 1', 'Text Field 2', 'Text Field 3', 'Text Field 4', 'Text Field 5'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Editable Text Fields'),
//       ),
//       body: ListView.builder(
//         itemCount: textFields.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: TextFormField(
//               initialValue: textFields[index],
//               onChanged: (value) {
//                 textFields[index] = value;
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: TextFieldListView(),
//   ));
// }
import 'package:flutter/material.dart';

class TextFieldListView extends StatefulWidget {
  @override
  _TextFieldListViewState createState() => _TextFieldListViewState();
}

class _TextFieldListViewState extends State<TextFieldListView> {
  List<String> textFields = ['Text Field 1', 'Text Field 2', 'Text Field 3', 'Text Field 4', 'Text Field 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editable Text Fields'),
      ),
      body: ListView.builder(
        itemCount: textFields.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Stack(
              alignment: Alignment.bottomRight,
              children: [
                TextFormField(
                  initialValue: textFields[index],
                  onChanged: (value) {
                    setState(() {
                      textFields[index] = value;
                    });
                  },
                ),
                Icon(Icons.arrow_forward, color: Colors.grey),
              ],
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TextFieldListView(),
  ));
}
