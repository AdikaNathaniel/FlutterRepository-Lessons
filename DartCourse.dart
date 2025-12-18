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
24.Padding is the internal space between the text and the border of the container.
25.Margin is the external space between the container and other widgets.
26.A Shuffle method called 'shuffle()' is used to randomize the order of items in a list.
27. Increments Can Be Done By :
    - currentQuestionIndex = currentQuestionIndex + 1
    - currentQuestionIndex += 1
    - currentQuestionIndex++
28.Map are collections that match values to keys.
       var user = {
            'username' : 'Maxmillan',
            'password' : 'supersect',
            'age' : 33
       }
29. For loops is given by :
       for(var i = 0;i < chosenAnswers.length; i++){
            summary.add({
                 'question_index' : i,
                 'question': questions[i].text,
                 'correct_answer': questions[i].answers[0],
                 'user_answer' : chosenAnswers[i]
            });
       }
30. var _activeman = 'Nat'    -- This denotes a private variable.
Where private implies it can only be used inside a class where that variable is defined.

31.Dealing With Getters
    getSummary{
      return Summary
   }
32. BreakPoints indicate that the code execution will stop at that point and you can inspect variables and their values at that point in time.
33. Hot Reload allows you to see changes made in the code immediately without having to restart the application.
34. DateTime is a dataType to store date and time information.
    Example is
             var currentDate = DateTime.now()
35.The 'Uuid' package is used to generate unique identifiers.
    Example is
             var uuid = Uuid()
             var uniqueId = uuid.v4()
where say the title,amount and date a book was published can have a unique identifier.
36.To create a fixed set of allowed values, you can use an enum.
    Example is
             enum Category{
                fiction,
                history,
                science,
                biography,
                poetry
             }
37.The method 'toStringAsFixed()' is used to format a double value to a string with a specified number of decimal places.
    Example is
             var price = 19.9999
             var formattedPrice = price.toStringAsFixed(2) // '20.00'
38.If you want 1 to the left and 3 to the right,you can use a 'const spacer()' between them.
39.Have a void dispose method to clean up controllers when they are no longer needed.
This saves memory and prevents potential memory leaks on the mobile device.
    Example is
             @override23
             void dispose(){
                _controller.dispose()
                super.dispose()
             }
40.Futures is a datatype that represents a value that will be available at some point in the future.
Eg for a date,
             Future<DateTime> fetchDateFromServer() async {
                await Future.delayed(Duration(seconds: 2))
                return DateTime.now()
             } which means after 2 seconds the date will be available.
41. DateTime? _selectedDate  -- This shows that the variable _selectedDate can be null.
42._selectedDate!.year  -- The '!' operator implies that the variable _selectedDate is never null when accessing its year property.
43._titleController.text.trim()  -- This is used to access the text entered in a TextField using its controller 
and remove any leading or trailing whitespace(i.e before and after the text).
44. LOGICAL Operators
   - AND : &&
   - OR  : ||
   - NOT : !
45.NB : / is for division that gives double values
         ~/ is for integer division that gives integer values
         % is for modulus that gives the remainder after division
46.EdgeInsets.fromLTRB(10,0,10,0)  -- This is used to set custom padding or margin values 
for left, top, right and bottom respectively.
47. Dismissable widget is used to delete items with a swipe gesture.
Eg to delete a list item,
         Dismissable(
            key: ValueKey(item.id),
            // This is an anonymous function
            onDismissed: (direction){
               deleteItem(item.id)
            },
            child: ListItemWidget(item: item)
         )
48.SnackBar is just an information message shown on the screen.
Eg to show a snackbar,
         ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
               content: Text('Item deleted'),
               duration: Duration(seconds: 2),
            )
         ); which means show a snackbar with the message 'Item deleted' for 2 seconds.