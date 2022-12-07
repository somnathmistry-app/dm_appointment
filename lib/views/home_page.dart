import 'package:dm_appointment/views/reschedule.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app_colors.dart';
import '../styles/commonmodule/app_bar.dart';
import '../utils/constants/size_oriantation.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);


  List<String> categories =[
    'All',
    'Pre Approved',
    'Recent Visitors',
  ];

  @override
  Widget build(BuildContext context) {

    ScreenContext.getScreenContext(context);
    // Size size = MediaQuery.of(context).size;
    // print(size.height);
    // print(size.width);
    if(ScreenContext.width! >= 550) {
      ///tablets...............
      return Scaffold(
        appBar: MyAppBars.tabAppBar(''),
        body: Column(
          children: [
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 15,),
                    SizedBox(
                      height: 45,
                      width: 45,
                      child: Image.asset('assets/images/calendar.png'),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text('Today\'s Appointments',
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Text('View All       ',
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
               // shrinkWrap: true,
                padding: const EdgeInsets.only(bottom: 30),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                    // height: 100,
                    decoration:   BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(
                            0,
                            3,
                          ),
                        )],
                      color: AppColors.themeColorLight,
                        borderRadius: BorderRadius.circular(10),
                        // border: Border(
                        //     bottom: BorderSide(
                        //         color: Colors.black))
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(width: 20,),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children:  [
                                      Icon(Icons.cancel_outlined,color: Colors.grey[600]),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                              height: 25,
                                              width: 25,
                                              child: Image.asset('assets/images/pre_approved.png')),
                                          const Text('  Rajesh Mehra (Pre Approved)',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black),),
                                        ],
                                      ),
                                      // const Text('Duration : 30 min   ',style: TextStyle(
                                      //     fontSize: 11,
                                      //     color: Colors.grey),),
                                    ],
                                  ),
                                 // SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 32.0),
                                        child: Text('Details  -  For Residential purpose',style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black),),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Get.to(()=> const Reschedule());
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                                          decoration: BoxDecoration(
                                              color: AppColors.themeColor,
                                              borderRadius: BorderRadius.circular(5)
                                          ),
                                          child: const Center(
                                              child:  Text('Reschedule',style:  TextStyle(color: Colors.white),)
                                          ),
                                        ),
                                      )
                                    ],
                                  ),const SizedBox(height: 5,),
                                  Center(
                                    child: Text(' Date : 13-11-2022         Time : 12 : 00',
                                        style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[600]),),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 20,),
                          ],
                        ),
                        const SizedBox(height: 10,)
                      ],
                    ),
                  );
                },),
            ),
          ],
        )
      );
    }
    ///phones...............
    return Scaffold(
      appBar: MyAppBars.myAppBar(''),
      body:  Column(
        children: [
          const SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 15,),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: Image.asset('assets/images/calendar.png'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text('Today\'s Appointments',
                    style: TextStyle(fontSize: 15,),
                  )
                ],
              ),
              const Text('View All       ',
                style: TextStyle(fontSize: 13,),
              )
            ],
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              // shrinkWrap: true,
              padding: const EdgeInsets.only(bottom: 30),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                  // height: 100,
                  decoration:   BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        offset: Offset(
                          0,
                          3,
                        ),
                      )],
                    color: AppColors.themeColorLight,
                    borderRadius: BorderRadius.circular(10),
                    // border: Border(
                    //     bottom: BorderSide(
                    //         color: Colors.black))
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 20,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children:  [
                                    Icon(Icons.cancel_outlined,color: Colors.grey[600]),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                            height: 18,
                                            width: 18,
                                            child: Image.asset('assets/images/pre_approved.png')),
                                        const Text('  Rajesh Mehra (Pre Approved)',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black),),
                                      ],
                                    ),
                                    // const Text('Duration : 30 min   ',style: TextStyle(
                                    //     fontSize: 11,
                                    //     color: Colors.grey),),
                                  ],
                                ),
                                // SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Expanded(
                                      child:  Padding(
                                        padding: EdgeInsets.only(left: 23.0),
                                        child: Text(' Details  -  For Residential purpose',style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black),),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Get.to(()=> const Reschedule());
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
                                        decoration: BoxDecoration(
                                            color: AppColors.themeColor,
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: const Center(
                                            child:  Text('Reschedule',style:  TextStyle(color: Colors.white),)
                                        ),
                                      ),
                                    )
                                  ],
                                ),const SizedBox(height: 5,),
                                Text('   Date : 13-11-2022       Time : 12 : 00',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[600]),),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20,),
                        ],
                      ),
                      const SizedBox(height: 10,)
                    ],
                  ),
                );
              },),
          ),
        ],
      ),
    );
  }
}
