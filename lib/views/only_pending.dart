import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../utils/constants/size_oriantation.dart';


class OnlyPending extends StatelessWidget {
  const OnlyPending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenContext.getScreenContext(context);

    if(ScreenContext.width! > 550) {
      return
        Expanded(
          child: ListView.builder(
            itemCount: 8,
            // shrinkWrap: true,
            //padding: const EdgeInsets.only(bottom: 30),
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
                  color: AppColors.white,
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
                                          height: 20,
                                          width: 20,
                                          child: Image.asset('assets/images/pending.png')),
                                      const Text('  Rajesh Mehra (Pending)  ',
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
                                  const Expanded(
                                    child:  Padding(
                                      padding: EdgeInsets.only(left: 29.0),
                                      child: Text('Details  -  For Residential purpose',style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black),),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(width: 20,),
                                      Container(
                                        child: Column(
                                          children: [
                                            Image.asset('assets/images/download_a.png',
                                                width: 20,height: 20,fit: BoxFit.cover),
                                            const Text('Download',style: TextStyle(fontSize: 12,
                                                fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                      ),const SizedBox(width: 15,),
                                      InkWell(
                                        onTap: () {
                                          // Get.to(()=> const Reschedule());
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 20),
                                          decoration: BoxDecoration(
                                              color: AppColors.themeColorTwo,
                                              borderRadius: BorderRadius.circular(5)
                                          ),
                                          child: const Center(
                                              child:  Text('Approved',style:  TextStyle(color: Colors.white),)
                                          ),
                                        ),
                                      ),const SizedBox(width: 5,),
                                      InkWell(
                                        onTap: () {
                                          // Get.to(()=> const Reschedule());
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
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
                                  ),

                                ],
                              ),const SizedBox(height: 5,),
                              Container(
                                height: 0.2,
                                width: double.infinity,
                                color: Colors.black,
                              ),const SizedBox(height: 8,),
                              Text('   Date : 13-11-2022         Time : 12 : 00',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[600]),),
                              const SizedBox(height: 8,),
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
        );
    }

    return
      Expanded(
        child: ListView.builder(
          itemCount: 8,
          // shrinkWrap: true,
          //padding: const EdgeInsets.only(bottom: 30),
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
                color: AppColors.white,
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

                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: Image.asset('assets/images/pending.png')),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:  const [
                                        Text(' Rajesh Mehra (Pending)  ',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),),
                                        Text(' Details  -  For Residential purpose',style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey),),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 5.5,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const SizedBox(width: 5,),
                                    Container(
                                      child: Column(
                                        children: [
                                          Image.asset('assets/images/download_a.png',
                                              width: 17,height: 17,fit: BoxFit.cover),
                                          const Text('Download',style: TextStyle(fontSize: 10,
                                          )),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 5,),
                                    InkWell(
                                      onTap: () {
                                        // Get.to(()=> const Reschedule());
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                                        decoration: BoxDecoration(
                                            color: AppColors.themeColorTwo,
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: const Center(
                                            child:  Text('Approved',style:  TextStyle(color: Colors.white),)
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5,),
                                    InkWell(
                                      onTap: () {
                                        // Get.to(()=> const Reschedule());
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
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
                                ),

                              ],
                            ),const SizedBox(height: 5,),
                            Container(
                              height: 0.2,
                              width: double.infinity,
                              color: Colors.black,
                            ),const SizedBox(height: 8,),
                            Text('   Date : 13-11-2022         Time : 12 : 00',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600]),),
                            const SizedBox(height: 8,),
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
      );
  }
}
