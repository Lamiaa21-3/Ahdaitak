import 'package:flutter/material.dart';

class CustomExpandableTile extends StatefulWidget {
  final String title;
  final List<String> questions;

  const CustomExpandableTile({
    super.key,
    required this.title,
    required this.questions,
  });

  @override
  State<CustomExpandableTile> createState() => _CustomExpandableTileState();
}

class _CustomExpandableTileState extends State<CustomExpandableTile>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  late final AnimationController _rotationController;

  @override
  void initState() {
    super.initState();
    _rotationController = AnimationController(
      duration: Duration(milliseconds: 200),
      vsync: this,
      upperBound: 0.5, // نصف دورة (180 درجة)
    );
  }

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _rotationController.forward();
      } else {
        _rotationController.reverse();
      }
    });
  }

  @override
  void dispose() {
    _rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            GestureDetector(
              onTap: _toggleExpand,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black87,
                    ),
                  ),
                  RotationTransition(
                    turns: _rotationController,
                    child: Icon(Icons.keyboard_arrow_down),
                  ),
                ],
              ),
            ),
            AnimatedCrossFade(
              firstChild: SizedBox.shrink(),
              secondChild: Column(
                children: widget.questions
                    .map(
                      (q) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        q,
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                  ),
                )
                    .toList(),
              ),
              crossFadeState: _isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: Duration(milliseconds: 250),
            ),
          ],
        ),
      ),
    );
  }
}
