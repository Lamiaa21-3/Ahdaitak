import 'package:ahdydic/core/helper/spacing.dart';
import 'package:ahdydic/core/theming/color.dart';
import 'package:ahdydic/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RewardsMainContainer extends StatelessWidget {
  const RewardsMainContainer({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(

      height: 700.h,
      decoration: BoxDecoration(
        color: ColorManager.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),

      ),
      child:ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20,),
            child: Container(
              width: 350,
            height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey.shade300),
                  color: ColorManager.white,
              ),
              child:CustomTabsWithContent() ,
            ),
          ),
       Container(),
        ],
      ) ,
    );
  }
}

class CustomTabsWithContent extends StatefulWidget {
  const CustomTabsWithContent({super.key});

  @override
  State<CustomTabsWithContent> createState() => _CustomTabsWithContentState();
}

class _CustomTabsWithContentState extends State<CustomTabsWithContent> {
  int selectedIndex = 0;

  final List<String> tabs = ['الميداليات', 'السجل', 'كيف تعمل'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ✅ التبويبات
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(tabs.length, (index) {
            final isSelected = selectedIndex == index;

            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: isSelected ? const Color(0xFF4B3B5A) : Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      tabs[index],
                      style: TextStyle(
                        color: isSelected ? Colors.white : Colors.black87,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),

        const SizedBox(height: 20),

        // ✅ الكونتينر المختلف حسب التبويب المختار
        // IndexedStack(
        //   index: selectedIndex,
        //   children: [
        //     Expanded(
        //         flex:1,child: _buildMedalsContainer()),
        //     Expanded(child: _buildHistoryContainer()),
        //     Expanded(child: _buildHowItWorksContainer()),
        //   ],
        // ),
      ],
    );
  }

  Widget _buildMedalsContainer() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.amber[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text('🟡 محتوى الميداليات'),
    );
  }

  Widget _buildHistoryContainer() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text('📜 محتوى السجل'),
    );
  }

  Widget _buildHowItWorksContainer() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Text('⚙️ محتوى كيف تعمل'),
    );
  }
}


