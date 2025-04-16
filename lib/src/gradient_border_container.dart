import 'package:flutter/material.dart';

/// A custom container widget that displays a gradient border around a child widget.
class GradientBorderContainer extends StatelessWidget {
  // The child widget displayed inside the container
  final Widget content;

  // Radius of the border's rounded corners
  final double radius;

  // Thickness of the border
  final double borderWidth;

  // Gradient used for the border
  final Gradient borderGradient;

  // Margin around the outer container
  final EdgeInsetsGeometry? margin;

  // Padding inside the content container
  final EdgeInsetsGeometry? contentPadding;

  // Background color of the inner content container
  final Color contentBackgroundColor;

  /// Constructor to initialize all required and optional properties
  const GradientBorderContainer({
    required this.content,
    required this.borderGradient,
    required this.contentBackgroundColor,
    super.key,
    this.radius = 0.0,
    this.borderWidth = 1.0,
    this.margin,
    this.contentPadding,
  });

  @override
  Widget build(final BuildContext context) {
    return Container(
      // Outer margin around the gradient border
      margin: margin ?? const EdgeInsets.all(1.0),

      // Padding to create space for the gradient border to be visible
      padding: EdgeInsets.all(borderWidth),

      // Outer container with gradient border decoration
      decoration: BoxDecoration(
        gradient: borderGradient, // Set the gradient for the border
        borderRadius: _getBorderRadius(), // Apply border radius
      ),

      // Inner container for the actual content and background color
      child: Container(
        padding: contentPadding, // Set content padding if provided
        decoration: BoxDecoration(
          color: contentBackgroundColor, // Background color for inner container
          borderRadius: _getBorderRadius(), // Same border radius as outer container
        ),
        child: content, // Display the provided child widget
      ),
    );
  }

  /// Helper method to generate a consistent border radius from the `radius` property
  BorderRadius _getBorderRadius() {
    return BorderRadius.only(
      topLeft: Radius.circular(radius),
      topRight: Radius.circular(radius),
      bottomRight: Radius.circular(radius),
      bottomLeft: Radius.circular(radius),
    );
  }
}
