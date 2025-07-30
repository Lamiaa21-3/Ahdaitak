
import 'package:ahdydic/core/helper/extensions.dart';
import 'package:ahdydic/core/routing/routes.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';

import '../../../core/theming/color.dart';

class EditOptionsSheet extends StatelessWidget {
  const EditOptionsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all(16),
      decoration:  BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 5,
            margin: const EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
              color: ColorManager.lighterGrey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          _buildBottomSheetItem(context, 'تعديل رقم الهاتف',(){
            context.pop();
            context.pushNamed(Routes.sendContracts);
          }),
          _buildBottomSheetItem(context, 'تعديل المنظم', (){

            context.pushNamed(Routes.modifyOrganizerScreen);
          }),
          _buildBottomSheetItem(context, 'تعديل الكمية',(){
            context.pop();
            context.pushNamed(Routes.sendRechargeScreen);
          } ),
        ],
      ),
    );
  }

  Widget _buildBottomSheetItem(BuildContext context, String title,void Function()? onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        margin: const EdgeInsets.symmetric(vertical: 3,),
        decoration: BoxDecoration(
          color: const Color(0xFFF6F6F6),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          title,
          style: StylesManager.font16MorePurpleMedium,
        ),
      ),
    );
  }
}
