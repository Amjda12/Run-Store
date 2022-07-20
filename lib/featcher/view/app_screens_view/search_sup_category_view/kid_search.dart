import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:runstore/featcher/view/widgets/custom_text.dart';
import '../../../../utils/utils.dart';
import '../../../core/colors/colors.dart';
import '../../../model/product_data_model.dart';
import '../../../view_model/dio_method_view_model.dart';
import '../../widgets/custom_price_with_line.dart';

class KidSearch extends StatefulWidget {
  const KidSearch({Key? key}) : super(key: key);

  static final DioMethods dioMethods = Get.put(DioMethods(), permanent: true);

  static Set<ProductData> display_list = Set.from(KidSearch.dioMethods.kid);

  @override
  State<KidSearch> createState() => _KidSearchState();
}

class _KidSearchState extends State<KidSearch> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 120) / 2;
    final double itemWidth = size.width / 2;
    print(KidSearch.display_list.length);
    return Scaffold(
      backgroundColor: ColorSelect.scaffoldBackgroundColorCatagories,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          color: ColorSelect.whiteColor,
        ),
        child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GetBuilder<DioMethods>(builder: (controller) {
                      if (KidSearch.display_list.isEmpty) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 280,
                          childAspectRatio: (itemWidth / itemHeight),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 15,
                        ),
                        itemCount: KidSearch.display_list.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: ColorSelect.whiteColor),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: ColorSelect.whiteColor,
                              ),
                              width: 160,
                              height: 240,
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                          imageUrl: KidSearch.display_list.elementAt(index).images.first,
                                          fit: BoxFit.fill),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    CustomText(
                                      text: KidSearch
                                          .display_list.elementAt(index).category.name,
                                      height: 0.0,
                                      textOverflow: TextOverflow.ellipsis,
                                      fontsize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w200,
                                      textAlign: TextAlign.left,
                                    ),
                                    CustomText(
                                      text: KidSearch.display_list.elementAt(index).title,
                                      height: 0.0,
                                      textOverflow: TextOverflow.ellipsis,
                                      fontsize: 16,
                                      color: ColorSelect.TextNewArrival,
                                      fontWeight: FontWeight.w200,
                                      textAlign: TextAlign.left,
                                    ),
                                    Row(
                                      children: [
                                        CustomText(
                                          text:
                                              '\$${KidSearch.display_list.elementAt(index).price}',
                                          height: 0.0,
                                          textOverflow: TextOverflow.ellipsis,
                                          fontsize: 16,
                                          color: ColorSelect.primarycolor,
                                          fontWeight: FontWeight.w100,
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(
                                          width: 35,
                                        ),
                                        CustomPriceWithLine(
                                          text:
                                              '\$${KidSearch.display_list.elementAt(index).price + 56}',
                                          height: 0.0,
                                          textOverflow: TextOverflow.ellipsis,
                                          fontsize: 16,
                                          color: ColorSelect.PriceNewArrival,
                                          fontWeight: FontWeight.w100,
                                          textAlign: TextAlign.left,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
