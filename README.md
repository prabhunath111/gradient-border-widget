<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

## Gradient Border Container, or you could say Gradient Border Widget, takes any widget as its content (or child), and displays a container with a gradient border around it.
A customizable Flutter widget that wraps any child widget with a smooth gradient border. It allows you to define the border radius, border width, gradient style, padding, and background color of the content area. Perfect for adding a stylish and modern touch to your UI elements.

## Features

Customizable appearance
Gradient border container
Gradient border widget


## Usage

Short and useful examples for package users.

```dart
GradientBorderContainer(
content: Text(
'Hello, World!',
style: TextStyle(fontSize: 24, color: Colors.black),
),
borderGradient: LinearGradient(
colors: [Colors.blue, Colors.purple],
),
radius: 15.0, // Rounded corners
borderWidth: 3.0, // Border width
margin: EdgeInsets.all(20), // Outer margin
contentBackgroundColor: Colors.white, //Content widget background color
contentPadding: EdgeInsets.all(20), // Padding inside the content area
),
```
## Some UI Example
![1_X8ox5L37yf0IQjzRZMisXA](https://github.com/user-attachments/assets/c2c42fc5-4a61-4415-b666-4e94ab5645af)

