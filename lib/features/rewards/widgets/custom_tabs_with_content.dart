import 'package:flutter/material.dart';

class CustomTabsWithContent extends StatefulWidget {
  const CustomTabsWithContent({super.key, required this.onTabChanged});

  final Function(int) onTabChanged;

  @override
  State<CustomTabsWithContent> createState() => _CustomTabsWithContentState();
}

class _CustomTabsWithContentState extends State<CustomTabsWithContent> {
  int selectedIndex = 0;

  final List<String> tabs = ['الميداليات', 'السجل', 'كيف تعمل'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //  التبويبات
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(tabs.length, (index) {
              final isSelected = selectedIndex == index;

              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      print(index);
                    });
                    widget.onTabChanged(index);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color:
                      isSelected ? const Color(0xFF4B3B5A) : Colors.white,
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
        ],
      ),
    );
  }
}
