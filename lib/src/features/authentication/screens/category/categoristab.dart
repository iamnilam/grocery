import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery/src/features/authentication/screens/category/cate_babycare.dart';
import 'package:grocery/src/features/authentication/screens/category/cate_beverages.dart';
import 'package:grocery/src/features/authentication/screens/category/cate_breakfast.dart';
import 'package:grocery/src/features/authentication/screens/category/cate_dairy.dart';
import 'package:grocery/src/features/authentication/screens/category/cate_flour.dart';
import 'package:grocery/src/features/authentication/screens/category/cate_fruits_page.dart';
import 'package:grocery/src/features/authentication/screens/category/cate_packaged.dart';
import 'package:grocery/src/features/authentication/screens/category/cate_personalcare.dart';
import 'package:grocery/src/features/authentication/screens/category/cate_snacks.dart';
import 'package:grocery/src/features/authentication/screens/category/cate_veg.dart';


class CustomeTabCategories extends StatefulWidget {
  const CustomeTabCategories({super.key});

  @override
  State<CustomeTabCategories> createState() => _CustomeTabCategoriesState();
}

class _CustomeTabCategoriesState extends State<CustomeTabCategories> with SingleTickerProviderStateMixin {

  late TabController mTabController;

  String mTitle = "Vegetables";


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mTabController = TabController(length: 10, vsync: this);
    mTabController.addListener(() {
      print(mTabController.index);
      if(mTabController.index==0){
        mTitle = "Vegetables";
      }
      else if(mTabController.index==1){
        mTitle = "Fruits";
      }
      else if(mTabController.index==2){
        mTitle = "Dairy";
      }
      else if(mTabController.index==3){
        mTitle = "Snacks";
      }
      else if(mTabController.index==4){
        mTitle = "Breakfast";
      }
      else if(mTabController.index==5){
        mTitle = "Flour &Grains";
      }
      else if(mTabController.index==6){
        mTitle = "Packaged Food";
      }
      else if(mTabController.index==7){
        mTitle = "Personal Care";
      }
      else if(mTabController.index==8){
        mTitle = "Baby Care Products";
      }
      else if(mTabController.index==9){
        mTitle = "Beverages";
      }
      setState(() {

      });

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(

        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Icon(
              color: Color(0xFF858585),
              Icons.arrow_back_sharp),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: IconButton(onPressed: (){}, icon: Icon(
                color: Color(0xFF858585),
                Icons.shopping_cart_outlined),),
          ),


        ],
        toolbarHeight: 120,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 100,left: 50,right: 50),
          child: Container(
            height: 36.h,
            width: 352.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF707070).withOpacity(0.1),
                    spreadRadius: 2,
                    offset: Offset(0,2),
                    blurStyle: BlurStyle.solid
                  )
                ]
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Image(
                    width: 14.29.w,
                    height: 14.34.h,
                    image: const AssetImage(
                      "assets/images/searchIcon.png",
                    )),
                Text(
                  "Search Products                             ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Text(mTitle,style: TextStyle(color: Colors.black),),
        ),
        centerTitle: true,
        bottom: TabBar(
          controller: mTabController,
          isScrollable: true ,
          tabs: const[
            Tab(

              child: Text("Vegetables",style: TextStyle(color: Colors.black),),
            ),
            Tab(
              child: Text("Fruits",style: TextStyle(color: Colors.black),),
            ),
            Tab(
              child: Text("Dairy",style: TextStyle(color: Colors.black),),
            ),
            Tab(
              child: Text("Snacks",style: TextStyle(color: Colors.black),),

            ),
            Tab(
              child: Text("Breakfast",style: TextStyle(color: Colors.black),),
            ),
            Tab(
              child: Text("Flour &Grains",style: TextStyle(color: Colors.black),),
            ),
            Tab(
              child: Text("Packaged Food",style: TextStyle(color: Colors.black),),
            ),
            Tab(
              child: Text("Personal Care",style: TextStyle(color: Colors.black),),
            ),
            Tab(
              child: Text("Baby Care Products",style: TextStyle(color: Colors.black),),
            ),
            Tab(
              child: Text("Beverages",style: TextStyle(color: Colors.black),),
            ),

          ],
        ),

        elevation: 0,
      ),
      body: TabBarView(
        controller: mTabController,
        children: [
          // VegetablesScreen(),
          // FruitsScreen(),
          // DairyScreen(),
          // SnacksScreen(),

          VegitablesScreen(),
          FruitsScreen(),
          DairyScreen(),
          SnacksScreen(),
          BreakFastScreen(),
          FlourScreen(),
          PackagedFoodScreen(),
          PersonalCareScreen(),
          BabyCareScreen(),
          BeveragesScreen(),

        ],
      ),

    );
  }
}

