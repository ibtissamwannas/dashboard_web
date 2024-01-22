import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({
    super.key,
    required this.image,
    required this.isSelected,
  });

  final String image;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            color: isSelected
                ? Colors.white.withOpacity(0.10000000149011612)
                : const Color(0xFFFAFAFA),
            shape: const OvalBorder(),
          ),
          child: Center(
            child: SvgPicture.asset(
              image,
              color: isSelected ? Colors.white : const Color(0xFF4EB7F2),
            ),
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: isSelected ? Colors.white : const Color(0xFF4EB7F2),
          ),
        )
      ],
    );
  }
}
