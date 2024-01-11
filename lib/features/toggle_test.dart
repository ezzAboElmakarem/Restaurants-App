import 'package:flutter/material.dart';

class MyTimePicker extends StatefulWidget {
  @override
  _MyTimePickerState createState() => _MyTimePickerState();
}

class _MyTimePickerState extends State<MyTimePicker> {
  List<TimeOfDay> _selectedTimes = [];
  List<TimeOfDay> _availableTimes = [
    TimeOfDay(hour: 8, minute: 0),
    TimeOfDay(hour: 12, minute: 0),
    TimeOfDay(hour: 18, minute: 0),
    // Add more times as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Selected Times: ${_selectedTimes.map((time) => time.format(context)).join(", ")}',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 20.0),
          Column(
            children: _availableTimes
                .map(
                  (time) => CheckboxListTile(
                    title: Text(time.format(context)),
                    value: _selectedTimes.contains(time),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value != null && value) {
                          _selectedTimes.add(time);
                        } else {
                          _selectedTimes.remove(time);
                        }
                      });
                    },
                  ),
                )
                .toList(),
          ),
          ElevatedButton(
            onPressed: () {
              // Perform action with selected times when the button is pressed
              print("Selected times: $_selectedTimes");
            },
            child: Text('Select Times'),
          ),
        ],
      ),
    );
  }
}






// class MyTimePicker extends StatefulWidget {
//   @override
//   _MyTimePickerState createState() => _MyTimePickerState();
// }

// class _MyTimePickerState extends State<MyTimePicker> {
//   List<TimeOfDay> _selectedTimes = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'Selected Times: ${_selectedTimes.map((time) => time.format(context)).join(", ")}',
//             style: TextStyle(fontSize: 18.0),
//           ),
//           SizedBox(height: 20.0),
//           buildTimeCheckbox(TimeOfDay(hour: 8, minute: 0)),
//           buildTimeCheckbox(TimeOfDay(hour: 12, minute: 0)),
//           buildTimeCheckbox(TimeOfDay(hour: 18, minute: 0)),
//           // Add more checkboxes as needed
//         ],
//       ),
//     );
//   }

//   Widget buildTimeCheckbox(TimeOfDay time) {
//     return Row(
//       children: [
//         Checkbox(
//           value: _selectedTimes.contains(time),
//           onChanged: (bool? value) {
//             setState(() {
//               if (value != null && value) {
//                 _selectedTimes.add(time);
//               } else {
//                 _selectedTimes.remove(time);
//               }
//             });
//           },
//         ),
//         Text(
//           time.format(context),
//           style: TextStyle(fontSize: 16.0),
//         ),
//       ],
//     );
//   }
// }




// class MyTimePicker extends StatefulWidget {
//   @override
//   _MyTimePickerState createState() => _MyTimePickerState();
// }

// class _MyTimePickerState extends State<MyTimePicker> {
//   TimeOfDay _selectedTime = TimeOfDay.now();

//   Future<void> _selectTime(BuildContext context) async {
//     final TimeOfDay? picked = await showTimePicker(
//       context: context,
//       initialTime: _selectedTime,
//     );

//     if (picked != null && picked != _selectedTime) {
//       setState(() {
//         _selectedTime = picked;
//         print("Selected time: $_selectedTime");
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             'Selected Time: ${_selectedTime.format(context)}',
//             style: TextStyle(fontSize: 18.0),
//           ),
//           SizedBox(height: 20.0),
//           ElevatedButton(
//             onPressed: () => _selectTime(context),
//             child: Text('Select Time'),
//           ),
//         ],
//       ),
//     );
//   }
// }











/***************************************************************************************************************************************************************************** */

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Toggle Buttons Example'),
//         ),
//         body: Center(
//           child: BlocProvider(
//             create: (context) => ToggleButtonCubit(),
//             child: ToggleButtonsExample(),
//           ),
//         ),
//       ),
//     );
//   }
// }
/***************************************************************************************************************************************************************************** */
// class ToggleButtonsExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => ToggleCategoryCubit(),
//       child: BlocBuilder<ToggleCategoryCubit, String>(
//         builder: (context, selectedButton) {
//           return Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 onPressed: () {
//                   context
//                       .read<ToggleCategoryCubit>()
//                       .toggleCategoryName('Button 1');
//                 },
//                 style: ButtonStyle(
//                   backgroundColor: selectedButton == 'Button 1'
//                       ? MaterialStateProperty.all<Color>(Colors.green)
//                       : null,
//                 ),
//                 child: Text('Button 1'),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   context
//                       .read<ToggleCategoryCubit>()
//                       .toggleCategoryName('Button 2');
//                 },
//                 style: ButtonStyle(
//                   backgroundColor: selectedButton == 'Button 2'
//                       ? MaterialStateProperty.all<Color>(Colors.green)
//                       : null,
//                 ),
//                 child: Text('Button 2'),
//               ),
//               // Add more buttons as needed
//             ],
//           );
//         },
//       ),
//     );
//   }
// }


/********************************************************************************* */



// class ToggleButtonsExample extends StatefulWidget {
//   @override
//   _ToggleButtonsExampleState createState() => _ToggleButtonsExampleState();
// }

// class _ToggleButtonsExampleState extends State<ToggleButtonsExample> {
//   List<bool> isSelected = [true, false, false, false];

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         ToggleButtons(
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Text('Button 1'),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Text('Button 2'),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Text('Button 3'),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Text('Button 4'),
//             ),
//           ],
//           isSelected: isSelected,
//           onPressed: (int index) {
//             setState(() {
//               // Toggle the state of the buttons
//               for (int i = 0; i < isSelected.length; i++) {
//                 isSelected[i] = (i == index);
//               }
//             });
//           },
//         ),
//       ],
//     );
//   }
// }





// **************************************************************************

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   bool isButton1Selected = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Toggle Buttons Example'),
//       ),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   isButton1Selected = true;
//                 });
//               },
//               style: isButton1Selected
//                   ? ElevatedButton.styleFrom(primary: Colors.blue)
//                   : ElevatedButton.styleFrom(primary: Colors.grey),
//               child: Text('Button 1'),
//             ),
//             SizedBox(width: 16),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   isButton1Selected = false;
//                 });
//               },
//               style: !isButton1Selected
//                   ? ElevatedButton.styleFrom(primary: Colors.blue)
//                   : ElevatedButton.styleFrom(primary: Colors.grey),
//               child: Text('Button 2'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
