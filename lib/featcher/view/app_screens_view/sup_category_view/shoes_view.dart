import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:runstore/featcher/core/colors/colors.dart';
import 'package:runstore/featcher/view/widgets/custom_text.dart';
import 'package:runstore/featcher/view_model/dio_method_view_model.dart';
import '../../../../utils/utils.dart';
import '../../widgets/custom_price_with_line.dart';

class ShoesView extends StatefulWidget {
  const ShoesView({Key? key}) : super(key: key);
  static final DioMethods dioMethods = Get.put(DioMethods(), permanent: true);
  @override
  State<ShoesView> createState() => _ShoesViewState();
}

class _ShoesViewState extends State<ShoesView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: ColorSelect.scaffoldBackgroundColorCatagories,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            ListTile(
              leading: InkWell(
                onTap: () {},
                child: Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: ColorSelect.whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 0.75),
                      ),
                    ],
                  ),
                  child: InkWell(
                    onTap: () => Get.back(),
                    child: Icon(
                      Icons.arrow_back_ios_outlined,
                      color: ColorSelect.blackColor,
                      size: 25,
                    ),
                  ),
                ),
              ),
              title: CustomText(
                text: 'Category',
                color: ColorSelect.textColor,
                fontsize: 17,
                textAlign: TextAlign.center,
                fontWeight: FontWeight.w600,
                textOverflow: TextOverflow.clip,
                height: 0.0,
              ),
              trailing: Container(
                height: 48,
                width: 48,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            CustomText(
              text: ShoesView.dioMethods.shoes.elementAt(0).category.name,
              color: ColorSelect.textColor,
              fontsize: 34,
              textAlign: TextAlign.center,
              fontWeight: FontWeight.w600,
              textOverflow: TextOverflow.clip,
              height: 0.0,
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.8211,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),),
                  color: ColorSelect.whiteColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      if (ShoesView.dioMethods.shoes.isEmpty) {
                        return Center(
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }
                      return InkWell(
                        onTap: (){},
                        child: Container(
                          width: double.infinity,
                          height: 275,
                          color: ColorSelect.whiteColor,
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 190,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Utils.instance.networkImage(
                                  imageUrl: ShoesView
                                      .dioMethods.shoes.elementAt(index).images[0] ,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(right: 5,left: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(text: ShoesView.dioMethods.shoes.elementAt(index).category.name, color: ColorSelect.textColor, fontsize: 16, textAlign: TextAlign.left, fontWeight: FontWeight.w400, textOverflow: TextOverflow.clip, height: 0.0,),
                                    CustomText(text: '\$${ShoesView.dioMethods.shoes.elementAt(index).price}', color: ColorSelect.primarycolor, fontsize: 16, textAlign: TextAlign.right, fontWeight: FontWeight.w400, textOverflow: TextOverflow.clip, height: 0.0,),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(right: 5,left: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 250,
                                      child: CustomText(text: ShoesView.dioMethods.shoes.elementAt(index).title, color: ColorSelect.TextNewArrival, fontsize: 16, textAlign: TextAlign.left, fontWeight: FontWeight.w400, textOverflow: TextOverflow.ellipsis, height: 0.0,)),
                                    CustomPriceWithLine(text: '\$${ShoesView.dioMethods.shoes.elementAt(index).price + 56}', color: ColorSelect.PriceNewArrival, fontsize: 13, textAlign: TextAlign.right, fontWeight: FontWeight.w400, textOverflow: TextOverflow.ellipsis, height: 0.0,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: ShoesView.dioMethods.shoes.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 20,
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}