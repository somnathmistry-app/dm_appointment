import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../styles/app_colors.dart';
import '../styles/commonmodule/app_bar.dart';
import '../styles/commonmodule/my_widgets.dart';
import '../utils/constants/size_oriantation.dart';



class AddNew extends StatefulWidget {
  const AddNew({Key? key}) : super(key: key);

  @override
  State<AddNew> createState() => _AddNewState();
}

class _AddNewState extends State<AddNew> {

  TextEditingController dateInput = TextEditingController();
  TextEditingController timeInput = TextEditingController();
  List<String> appointmentType = [
    'Pre approved',
    'Recent Visitors',
  ];

  @override
  void initState() {
    dateInput.text = ""; //set the initial value of text field
    timeInput.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ScreenContext.getScreenContext(context);
    if(ScreenContext.width! > 550) {
      ///tablets...............
      return Scaffold(
        appBar: MyAppBars.tabAppBar(''),
        body: ListView(
        //  mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const SizedBox(height: 25),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              child: TextFormField(
                  //keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(fontSize: 15, color: AppColors.black),
                  decoration: InputDecoration(
                    hintStyle: const TextStyle(color: Colors.black),
                    fillColor: AppColors.white,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                  //  hintText: 'Enter Name',
                    labelText: '   Name of the recipient',
                    labelStyle: const TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontStyle: FontStyle.normal),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: AppColors.black,
                        )),
                  )
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              child: TextFormField(
                  //keyboardType: TextInputType.datetime,
                  controller: dateInput,
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2100));

                    if (pickedDate != null) {
                    //  print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate =
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                     // print(formattedDate); //formatted date output using intl package =>  2021-03-16
                      setState(() {
                        dateInput.text =
                            formattedDate; //set output date to TextField value.
                      });
                    } else {}
                  },
                  textInputAction: TextInputAction.next,
                  style: TextStyle(fontSize: 15, color: AppColors.black),
                  decoration: InputDecoration(
                    hintStyle: const TextStyle(fontSize: 13,color: Colors.black),
                    fillColor: AppColors.white,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                    hintText: '  Enter meeting date',
                   // labelText: '   Enter meeting date',
                    labelStyle: const TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontStyle: FontStyle.normal),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: AppColors.black,
                        )
                    ),
                  )
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              child: TextFormField(
                  keyboardType: TextInputType.number,
                  readOnly: true,
                  controller: timeInput,
                  onTap: () async {
                    TimeOfDay? pickedTime =  await showTimePicker(
                      initialTime: TimeOfDay.now(),
                      context: context,
                    );
                    if(pickedTime != null ){
                     // print(pickedTime.format(context));   //output 10:51 PM
                      DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                      //converting to DateTime so that we can further format on different pattern.
                     // print(parsedTime); //output 1970-01-01 22:53:00.000
                      String formattedTime = DateFormat('HH:mm').format(parsedTime);
                      //print(formattedTime); //output 14:59:00
                      //DateFormat() is from intl package, you can format the time on any pattern you need.
                      setState(() {
                        timeInput.text =
                            formattedTime; //set output date to TextField value.
                      });
                    }else{
                      print("Time is not selected");
                    }
                  },
                  textInputAction: TextInputAction.next,
                  style: TextStyle(fontSize: 15, color: AppColors.black),
                  // validator: (input) =>
                  // input!.isEmpty ? "Enter Your Name" : null,
                  decoration: InputDecoration(
                    hintStyle: const TextStyle(color: Colors.black),
                    fillColor: AppColors.white,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                    //hintText: 'Enter Mother\'s name',
                    labelText: '   Enter meeting time',
                    labelStyle: const TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontStyle: FontStyle.normal),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: AppColors.black,
                        )),
                  )
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              child: TextFormField(
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  style: TextStyle(fontSize: 15, color: AppColors.black),

                  // validator: (input) =>
                  // input!.isEmpty ? "Enter Your Name" : null,
                  decoration: InputDecoration(
                    hintStyle: const TextStyle(color: Colors.black),
                    fillColor: AppColors.white,
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 16.0),
                    //hintText: 'Enter Father\'s name',
                    labelText: '   Enter meeting Duration',
                    labelStyle: const TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontStyle: FontStyle.normal),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: AppColors.black,
                        )
                    ),
                  )
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 5,vertical: 15),
                  hintText: '     Select Entry Type',
                  hintStyle: const TextStyle(fontSize: 13),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(8)),
                ),
                items: appointmentType.map((String category) {
                  return DropdownMenuItem(value: category, child:
                  Text('   $category'));
                }).toList(),
                onChanged: (Object? value) {  },
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              child: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  maxLines: 3,
                  style: TextStyle(fontSize: 15, color: AppColors.black),
                  // validator: (input) =>
                  // input!.isEmpty ? "Enter Your Name" : null,
                  decoration: InputDecoration(
                    hintStyle: const TextStyle(fontSize: 13,color: Colors.black),
                    fillColor: AppColors.white,
                    filled: true,
                   contentPadding: const EdgeInsets.symmetric(
                       horizontal: 16.0, vertical: 16.0),
                    hintText: '   Enter purpose/subject....',
                   // labelText: '   Enter purpose/subject....',
                    labelStyle: const TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontStyle: FontStyle.normal),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: AppColors.black,
                        )),
                  )
              ),
            ),
            InkWell(
              onTap: () {
                _filePick();
              },
              child: Container(
                height: 60,
              //  width: 300,
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    color:  AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black87)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    pickedFiles == null?
                    Expanded(
                        child: MyWidgets.textView('      Attach file',
                            Colors.black,14))
                        : Expanded(
                         child: MyWidgets.textView(
                            '      ${pickedFiles!.name}', Colors.black,14)
                    ),
                    Container(
                      height: double.infinity,
                     // width: 75,
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppColors.themeColor,
                          borderRadius: BorderRadius.circular(7.5)
                      ),
                      child: Center(child: MyWidgets.textView('Choose file', Colors.white, 13)),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //width: 250,
                  height: 45,
                  margin: const EdgeInsets.symmetric(horizontal: 20,),
                  child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.themeColorTwo),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )
                          )
                      ),
                      onPressed: () {},
                      child: MyWidgets.textView("  Create Appointment  ", AppColors.white, 16)),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      );
    }
    ///phones...............
    return Scaffold(
      appBar: MyAppBars.myAppBar(''),
      body: ListView(
        //  mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          const SizedBox(height: 25),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: TextFormField(
              //keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                style: TextStyle(fontSize: 15, color: AppColors.black),
                decoration: InputDecoration(
                  hintStyle: const TextStyle(color: Colors.black),
                  fillColor: AppColors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16.0),
                  //  hintText: 'Enter Name',
                  labelText: '   Name of the recipient',
                  labelStyle: const TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontStyle: FontStyle.normal),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: AppColors.black,
                      )),
                )
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: TextFormField(
              //keyboardType: TextInputType.datetime,
                controller: dateInput,
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1950),
                      //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2100));

                  if (pickedDate != null) {
                    //  print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                    String formattedDate =
                    DateFormat('yyyy-MM-dd').format(pickedDate);
                    // print(formattedDate); //formatted date output using intl package =>  2021-03-16
                    setState(() {
                      dateInput.text =
                          formattedDate; //set output date to TextField value.
                    });
                  } else {}
                },
                textInputAction: TextInputAction.next,
                style: TextStyle(fontSize: 15, color: AppColors.black),
                decoration: InputDecoration(
                  hintStyle: const TextStyle(fontSize: 13,color: Colors.black),
                  fillColor: AppColors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16.0),
                  hintText: '  Enter meeting date',
                  // labelText: '   Enter meeting date',
                  labelStyle: const TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontStyle: FontStyle.normal),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: AppColors.black,
                      )
                  ),
                )
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: TextFormField(
                keyboardType: TextInputType.number,
                readOnly: true,
                controller: timeInput,
                onTap: () async {
                  TimeOfDay? pickedTime =  await showTimePicker(
                    initialTime: TimeOfDay.now(),
                    context: context,
                  );
                  if(pickedTime != null ){
                    // print(pickedTime.format(context));   //output 10:51 PM
                    DateTime parsedTime = DateFormat.jm().parse(pickedTime.format(context).toString());
                    //converting to DateTime so that we can further format on different pattern.
                    // print(parsedTime); //output 1970-01-01 22:53:00.000
                    String formattedTime = DateFormat('HH:mm').format(parsedTime);
                    //print(formattedTime); //output 14:59:00
                    //DateFormat() is from intl package, you can format the time on any pattern you need.
                    setState(() {
                      timeInput.text =
                          formattedTime; //set output date to TextField value.
                    });
                  }else{
                    print("Time is not selected");
                  }
                },
                textInputAction: TextInputAction.next,
                style: TextStyle(fontSize: 15, color: AppColors.black),
                // validator: (input) =>
                // input!.isEmpty ? "Enter Your Name" : null,
                decoration: InputDecoration(
                  hintStyle: const TextStyle(color: Colors.black),
                  fillColor: AppColors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16.0),
                  //hintText: 'Enter Mother\'s name',
                  labelText: '   Enter meeting time',
                  labelStyle: const TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontStyle: FontStyle.normal),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: AppColors.black,
                      )),
                )
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: TextFormField(
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                style: TextStyle(fontSize: 15, color: AppColors.black),

                // validator: (input) =>
                // input!.isEmpty ? "Enter Your Name" : null,
                decoration: InputDecoration(
                  hintStyle: const TextStyle(color: Colors.black),
                  fillColor: AppColors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16.0),
                  //hintText: 'Enter Father\'s name',
                  labelText: '   Enter meeting Duration',
                  labelStyle: const TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontStyle: FontStyle.normal),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: AppColors.black,
                      )
                  ),
                )
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 5,vertical: 15),
                hintText: '     Select Entry Type',
                hintStyle: const TextStyle(fontSize: 13),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8)),
              ),
              items: appointmentType.map((String category) {
                return DropdownMenuItem(value: category, child:
                Text('   $category'));
              }).toList(),
              onChanged: (Object? value) {  },
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.next,
                maxLines: 3,
                style: TextStyle(fontSize: 15, color: AppColors.black),
                // validator: (input) =>
                // input!.isEmpty ? "Enter Your Name" : null,
                decoration: InputDecoration(
                  hintStyle: const TextStyle(fontSize: 13,color: Colors.black),
                  fillColor: AppColors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 16.0),
                  hintText: '   Enter purpose/subject....',
                  // labelText: '   Enter purpose/subject....',
                  labelStyle: const TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontStyle: FontStyle.normal),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: AppColors.black,
                      )),
                )
            ),
          ),
          InkWell(
            onTap: () {
              _filePick();
            },
            child: Container(
              height: 60,
              //  width: 300,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color:  AppColors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black87)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  pickedFiles == null?
                  Expanded(
                      child: MyWidgets.textView('      Attach file',
                          Colors.black,14))
                      : Expanded(
                      child: MyWidgets.textView(
                          '      ${pickedFiles!.name}', Colors.black,14)
                  ),
                  Container(
                    height: double.infinity,
                    // width: 75,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppColors.themeColor,
                        borderRadius: BorderRadius.circular(7.5)
                    ),
                    child: Center(child: MyWidgets.textView('Choose file', Colors.white, 13)),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                //width: 250,
                height: 45,
                margin: const EdgeInsets.symmetric(horizontal: 20,),
                child: ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(AppColors.themeColorTwo),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            )
                        )
                    ),
                    onPressed: () {},
                    child: MyWidgets.textView("  Create Appointment  ", AppColors.white, 14)),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  PlatformFile? pickedFiles;

  _filePick() async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        pickedFiles =result.files.first;
      });
    }
  }
}
