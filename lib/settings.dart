import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class SettingsDemo extends StatefulWidget {
  const SettingsDemo({super.key});

  @override
  State<SettingsDemo> createState() => _SettingsDemoState();
}

class _SettingsDemoState extends State<SettingsDemo> {
  bool isSwitchOn = false;
  List<String> selectedCourse = ["Flutter", "Web", "Graphics"];
  String? selectedItem;
  double selectedValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Card(
            color: isSwitchOn ? Colors.orangeAccent: Colors.yellow,
            child: ListTile(
              leading: Icon(isSwitchOn ? Icons.notifications_active : Icons.notifications_none),
              title: Text("Notifications"),
              subtitle: Text(isSwitchOn ? "ON" : "OFF"),
              trailing: CupertinoSwitch(
                activeTrackColor: Colors.blue,
                  thumbColor: Colors.green,
                  inactiveTrackColor: Colors.black,
                  inactiveThumbColor: Colors.red,
                  value: isSwitchOn,
                  onChanged: (val){
                    setState(() {
                      isSwitchOn = val;
                    });
                  }),
            ),
          ),
          DropdownButton(
            hint: Text("Select Course"),
              value: selectedItem,
              items: selectedCourse.map((course){
                return DropdownMenuItem(
                  value: course,
                    child: Text(course.toString()));
              }).toList(),
              onChanged: (value){
              setState(() {
                selectedItem = value;
              });
          }),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.green,
              inactiveTrackColor: Colors.grey,
              trackShape: RoundedRectSliderTrackShape(),
              trackHeight: 2.0,
            ),
            child: Slider(
                value: selectedValue,
                min: 0, max: 100,
                divisions: 100,
                label: selectedValue.round().toString(),
                onChanged: (value){
                  setState(() {
                    selectedValue = value;
                  });
                }),
          ),
          Pinput(
            length: 6,
            showCursor: true,
            onCompleted: (value){
              print(value);
            },
            defaultPinTheme: PinTheme(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              textStyle: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                color: Colors.red,
                fontFamily: "KaronaOne"
              )
            ),
          )
        ],
      ),
    );
  }
}
