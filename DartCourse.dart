1.Flutter is a UI framework developed by Google for building natively compiled applications for mobile, web, and desktop from a single codebase 
thus building apps for multiple platforms without having to learn languages for each platform.
2.It can create applications for :
- Mobile (iOS and Android)
- Web
- Desktop (Windows, macOS, Linux)
3.Flutter uses the Dart programming language, also developed by Google.
So flutter is a framework and dart is a programming language.
Where a framework is a collection of pre-written code that developers can use to build applications more efficiently. 
  NB : Flutter : One Codebase, Multiple Platforms.
4.You can run Android mobile apps on a Mac using the Android emulator.
5.On macOS, developers can test applications on both Android and iOS platforms because macOS supports the Android emulator as well as Apple’s official iOS simulator through Xcode. 
In contrast, Windows supports testing on the Android platform using the Android emulator, but it does not support testing on iOS, since Apple restricts iOS simulators and development tools to macOS only.
6.Material Design is a design system created by Google to provide a consistent look and feel across all platforms and devices.
It includes guidelines for layout, typography, color, and other design elements.
This can be seen with the MaterialApp widget in Flutter.

Repository for this course: https://github.com/academind/flutter-complete-guide-course-resources

7.Parameters are used for functions whilst arguments are used when calling functions.
8.Button,Text and Icons are all widgets in Flutter.
9.MaterialApp uses named parameters.
10.Const in Dart helps to optimize runtime performance by avoiding duplication of data in memory.
11.Dart is a type safe language meanning that each value is givena certain type say a string or integer and that type cannot be changed.
12.Widgets are ojects and are data structures in memory.
13.Inheritance is done with the 'extends' keyword.
14.Variables can be reassigned but const cannot be.
It is given by the 'var' keyword.
15.'final' keyword implies that is the last assigned value and  it will not be changed.
16.Buttons in flutter include:
   - Elevated Button
   - Outlined Button
   - TextButton
17.Stateful widgets are used  when widgets have to be changed with time like an image
has to change from one state to another if a button is clicked.
18. class _NightOwl implies this class is a private class.


// Generating Random Numbers Between 1 to 6
NB : var diceRoll = Random().nextInt(6) + 1

// To Use It
activeDiceImage = 'assets/images/dice-$diceRoll.png'
19.Dart is an OOP language.
20.Opacity defines the transparency of a widget.
21.Stateful Widget LifeCycle Methods:
   - initState() : This is to initialize the stateful widget.
   - build() : This is executed when the widget is running for the first time and after the setState has been called.
   - dispose() : This is executed right before the widget is deleted.
                              CONDITIONALS
22.Using Ternary Operators,
      condition ? do this if the condition is true : do this if the condition is false
Thus,   
      activeScreen == 'start-screen' ? StartScreen(switchScreen) : QuestionScreen()
* Using 'if statements'
       
23.mainAxisAlignmment is from top to down and crossAxisAlignment is from left to right.