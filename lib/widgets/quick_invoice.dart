import 'package:dashboard_web/widgets/custom_container.dart';
import 'package:dashboard_web/widgets/user_info_list.dart';
import 'package:flutter/material.dart';
import '../models/user_info_model.dart';
import '../utils/app_images.dart';
import '../utils/app_style.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  static const items = [
    UserInfoModel(
        image: Assets.assetsImagesAvatar,
        subTitle: 'Madraniadi20@gmail.com',
        title: 'Madrani Andi'),
    UserInfoModel(
        image: Assets.assetsImagesAvatar2,
        subTitle: 'Josh Nunito@gmail.com',
        title: 'Josua Nunito'),
    UserInfoModel(
        image: Assets.assetsImagesAvatar,
        subTitle: 'ibtissamwannas21@gmail.com',
        title: 'Ibtissam Al Wannas'),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomeContainer(
      padding: 20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Quick Invoice",
                style: AppStyles.styleSemiBold20,
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Container(
                width: 48,
                height: 48,
                decoration: const ShapeDecoration(
                  color: Color(0xFFFAFAFA),
                  shape: OvalBorder(),
                ),
                child: const Icon(
                  Icons.add,
                  color: Color(
                    0xFF4EB7F2,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Latest Transaction",
                style: AppStyles.styleMedium16,
              ),
              SizedBox(
                height: 16,
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return IntrinsicWidth(
                    child: UserInfoList(
                      userinfo: items[index],
                    ),
                  );
                }),
          ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: items
          //         .map((e) => IntrinsicWidth(
          //               child: UserInfoList(
          //                 userinfo: e,
          //               ),
          //             ))
          //         .toList(),
          //   ),
          // )
          const Divider(
            height: 48,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Customer name',
                      style: AppStyles.styleMedium16,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomTextFormField(
                      text: "Type customer name",
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Customer Email',
                      style: AppStyles.styleMedium16,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomTextFormField(
                      text: "Type customer email",
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Item name',
                      style: AppStyles.styleMedium16,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomTextFormField(
                      text: "Type item name",
                    )
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Item mount',
                      style: AppStyles.styleMedium16,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomTextFormField(
                      text: "USD",
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            children: const [
              Expanded(
                child: CustomButton(
                  text: "Add more details",
                  backgroundColor: Colors.white,
                  textColor: Color(
                    0xFF4EB7F2,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: CustomButton(
                  text: "Send money",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
