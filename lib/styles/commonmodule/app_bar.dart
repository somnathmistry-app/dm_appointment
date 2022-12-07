import 'package:flutter/material.dart';

import '../app_colors.dart';

//
// AppBar appBar(String name) => AppBar(
//   backgroundColor: AppColors.themeColor,
//   centerTitle: true,
//     title: Text(name,
//         style:
//             const TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16)));


class MyAppBars {

  static AppBar myAppBar(String name,) =>
      AppBar(
          backgroundColor: AppColors.themeColor,
          centerTitle: true,
          elevation: 0,
          toolbarHeight: 80,
          actions: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(height: 5,),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color:  Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                ),
                const Text('S Arun Prasad(DM)',style: TextStyle(fontSize: 15)),
                const Text('IP- 192.168.45 (last session updated)',style: TextStyle(fontSize: 11)),
              ],
            ),
            const SizedBox(width: 12,)
          ],
          leading: Container(
              height: 50,
              width: 90,
              margin: const EdgeInsets.only(left: 5),
              child:
              Image.asset('assets/images/logo.png',fit: BoxFit.contain,)
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                    color: AppColors.themeColorTwo,
                    borderRadius:  BorderRadius.circular(8)),
                child: Row(
                  children: const[
                    Icon(Icons.notification_add,size: 18),
                    Text(' (1)',style:  TextStyle(
                        fontSize: 12,
                        color: Colors.white),)
                  ],
                ),
              ),
              //const SizedBox(width: 2,),
              Container(
                // height: 35,
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                //width: 70,
                decoration: BoxDecoration(
                    color: AppColors.themeColor3,
                    borderRadius:  BorderRadius.circular(8)),
                child: Row(
                  children: const[
                    Icon(Icons.notification_important,size: 18),
                    Text(' (9)',style:  TextStyle(
                        fontSize: 12,
                        color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          )
      );


  static AppBar tabAppBar(String name,) =>

      AppBar(
          backgroundColor: AppColors.themeColor,
          centerTitle: true,
          elevation: 0,
          leadingWidth: 70,
          toolbarHeight: 100,
          actions: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // const SizedBox(height: 5,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color:  Colors.white,
                      borderRadius: BorderRadius.circular(27)),
                ),
                const Text('S Arun Prasad(DM)',style: TextStyle(fontSize: 17)),
                const Text('IP- 192.168.45 (last session updated)',style: TextStyle(fontSize: 12)),
              ],
            ),
            const SizedBox(width: 12,)
          ],
          leading:  Container(
              height: 50,
              width: 90,
              margin: const EdgeInsets.only(left: 12),
              child:
              Image.asset('assets/images/logo.png',fit: BoxFit.contain,)
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                // height: 35,
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                //width: 70,
                decoration: BoxDecoration(
                    color: AppColors.themeColorTwo,
                    borderRadius:  BorderRadius.circular(8)),
                child: Row(
                  children: const[
                    Icon(Icons.notification_add,size: 18),
                    Text('  Pre Approved(10)',style:  TextStyle(
                        fontSize: 11,
                        color: Colors.white),)
                  ],
                ),
              ),
              //const SizedBox(width: 2,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                    color: AppColors.themeColor3,
                    borderRadius:  BorderRadius.circular(8)),
                child: Row(
                  children: const[
                    Icon(Icons.notification_important,size: 18),
                    Text('  Recent Visitors(10)',style:  TextStyle(
                        fontSize: 11,
                        color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          )
      );


}

// AppBar appBarCart(String name) => AppBar(
//   title: Text(name,
//       style:
//       const TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16)),
//   actions: [
//     //Container(color:Colors.deepPurple,child: Text('data')),
//     Obx(()=>Badge(
//       badgeColor: Colors.deepOrange,
//       position: BadgePosition.topEnd(top: 2, end: 4),
//       badgeContent: Text(CartController.cartItem.value,
//       style: const TextStyle(color: Colors.white, fontSize: 11),),
//       child: IconButton(
//         icon: Icon(Icons.shopping_cart, color: AppColors.white),
//         onPressed: () {
//           Get.to(() => CartView());
//         },
//       ),
//     )),
//     const SizedBox(width: 4,)
//   ],
// );

