import 'package:curie/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    this.padding = const EdgeInsets.all(8.0),
    required this.height,
    this.width = double.infinity,
    this.duration = const Duration(milliseconds: 100),
    this.color = ApplicationColors.fillWhite,
    this.borderColor = Colors.black,
    required this.onTap,
    required this.child,
  });

  final double height, width;
  final Duration duration;
  final Widget child;
  final Color color, borderColor;
  final EdgeInsets padding;
  final void Function()? onTap;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    _animation = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(4.0, 4.0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.forward().then((_) {
          _controller.reverse();
          widget.onTap;
        });
      },
      child: Stack(
        children: [
          Container(
            height: widget.height,
            width: widget.width,
            padding: widget.padding,
            decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: const [
                  BoxShadow(color: Colors.black, offset: Offset(4.0, 4.0))
                ],
                borderRadius: BorderRadius.circular(16.0)),
          ),
          AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.translate(
                offset: _animation.value,
                child: AnimatedContainer(
                  height: widget.height,
                  width: widget.width,
                  alignment: Alignment.center,
                  padding: widget.padding,
                  duration: widget.duration,
                  decoration: BoxDecoration(
                      color: widget.color,
                      border: Border.all(color: widget.borderColor, width: 2.0),
                      borderRadius: BorderRadius.circular(16.0)),
                  child: widget.child,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
