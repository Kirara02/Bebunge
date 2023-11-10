import 'package:flutter/material.dart';

class UXAnimationZoom extends StatefulWidget {
  const UXAnimationZoom({this.child = const SizedBox(), this.onTap, super.key});
  final Widget? child;
  final VoidCallback? onTap;

  @override
  State<UXAnimationZoom> createState() => _UXAnimationZoomState();
}

class _UXAnimationZoomState extends State<UXAnimationZoom>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      // lowerBound: 0.0,
      // upperBound: 0.1,
      vsync: this,
    );
    _animation = Tween<double>(
      begin: 1.0,
      end: 0.85,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutSine,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        if (widget.onTap != null) {
          _controller.forward();
        }
      },
      onTapCancel: () {},
      onTapUp: (de) {
        if (widget.onTap != null) {
          _controller.reverse();
        }
      },
      onTap: () {
        if (widget.onTap != null) {
          _controller.forward();
          Future.delayed(const Duration(milliseconds: 300), () {
            _controller.reverse();
            widget.onTap!();
          });
        }
      },
      child: ScaleTransition(scale: _animation, child: widget.child),
    );
  }
}
