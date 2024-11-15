import 'package:flutter/material.dart';

class OfferBox extends StatelessWidget {
  final Widget offer;
  final String description;
  final Widget? special;
  final double height;
  final double width;
  final EdgeInsetsGeometry offerPadding;
  final VoidCallback? onTap;
  final bool isChosen;
  const OfferBox({
    super.key,
    required this.offer,
    required this.description,
    this.special,
    this.onTap,
    this.height = double.infinity,
    this.width = double.infinity,
    this.offerPadding = EdgeInsets.zero,
    this.isChosen = false,
  });

  @override
  Widget build(BuildContext context) {
    final color = isChosen
        ? Color.lerp(const Color(0xFF212020), const Color(0xFF7446AC), 0.1)
        : const Color(0xFF212020);

    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: onTap,
              child: Padding(
                padding: offerPadding,
                child: Container(
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: const Color(0xFF393737)),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        offer,
                        Text(
                          description,
                          style: const TextStyle(
                            color: Color(0xFFF6F4F4),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: special,
          )
        ],
      ),
    );
  }
}
