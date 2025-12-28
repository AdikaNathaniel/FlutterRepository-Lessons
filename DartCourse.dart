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
You could add a red color behind when it is being swiped to indicate to a user that the action you are taking is 
deleting that card.
48.SnackBar is just an information message shown on the screen.
Eg to show a snackbar,
         ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
               content: Text('Item deleted'),
               duration: Duration(seconds: 2),
            )
         ); which means show a snackbar with the message 'Item deleted' for 2 seconds.
This can be used with a dimmissable widget to show a message when an item is deleted and
an UNDO is provided to restore the deleted item to the same place that it was.
49.crossAxisAlignment : crossAxisAlignment.start  -- This is used to align widgets to the start of the cross axis (left side).
crossAxisAlignment : crossAxisAlignment.end    -- This is used to align widgets to the end of the cross axis (right side).
50.Another type of for loop is :
   final List<Expense> expenses;

    for (final expense in expenses){
           sum = sum + expense.amount;
    }
51.Responsive implies that if a phone is put on auto rotate,
the application layout changes to fit the new orientation.So the app looks good in both portrait and landscape mode.
Some apps lock the orientation to portrait mode only.
52.Safe Area ensures that the app stays away from device features like a camera.
53.The title of an appBar is usually in the middle but when you use the property,
       centerTitle : false
This ensures that the title is to the left of the appBar.
54.Trees :
   - Widget Trees : This means all combination of the widgets in your code
   - Element Trees : The 'in-memory' representation of widgets thus determining the UI updates
   - Render Trees : The visible UI building blocks.
55.Keys are important in Flutter to help preserve the state of widgets 
when they are moved around in the widget tree or when the widget tree is rebuilt.
56. You can have a drawer and a navbar at the bottom.
57.Inkwell allows an onTap effect on any widget.
58.To have image in the background and a text on top of it uses the principle of Stacks.
59.Usually the tabs is created as a separate dart page. 
60.A subtitle with a labelMedium sets the font size to 14.
61.An alternative to pushing pages on the flutter app is to replace the current page with another page.
62.WillPopScope is thought to be deprecated but the latest is PopScope. 
It is used to intercept the back button press action.
63.Recall that maps use key-value pairs.
Eg to define a map,  
     Map<String, int> scores = {
        'Alice': 90,
        'Bob': 85,
        'Charlie': 92,
     };
64. A ?? B -- This means if A is not null use A otherwise use B.
65.The named route approach is better for larger applications with many screens however
this approach is usually not recommended for most apps.
     Eg to define named routes,
         routes : {
        '/': (ctx) => HomeScreen(),
        '/settings' : (ctx) => SettingsScreen(),
        }
             STATE MANAGEMENT
66.State Management is important for example where one page is on the left side of 
a drop down menu and the other page is on the right side of the dropdown menu.
When you select an item from the left side,the right side should change to reflect that choice
but since they are disjointed,this is not possible hence state management is needed
by ensuring that the state is shared or communicated between the two sides hence from the 
very beginning.
Example of packages for state management are :
   - Provider
   - Riverpod
   - Bloc
   - GetX
   - MobX
   - Redux
However,Riverpod and Provider are the most popular but riverpod is considered more modern and flexible.

** Not Understood Yet** -- More Complex Provider With State Notifier
67. ChangeNotifier is a class that provides change notification to its listeners.
In summary,riverpod is used for managing global state or cross widget state.
68.The types of animations are :
       - Implicit animations -- Flutter Controls The Animation, less control with less complexity
       - Explicit animations -- You Control The Animation, hence more control but greater complexity
69.Animation Controller will always work with a stateful widget due to the numerous changes.
70.Late is used with animationController to say "okay I don't have a value for you now,but later you
will get some values".
    Eg : 
       late AnimationController _animationController
In an animation, you set a duration,a lower bound and an upper bound for the animation.
After the animation,use the dispose to do the clean up work.
71.animationController.forward() -- This ensures an animation is started.
   animationController.repeat()  -- This ensures an animation continues in a cycle.
72.Tween() -- This comes from the idead that we are transitioning between two values.
  It works as :
       Tween(
         begin: const Offset(0,0.3),
         end :  const Offset(0,0),
       ).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),)
All of this explicit animation requires all this configuration to be done but in implicit animation,
all of that is setup for you.
NB : Keys are needed when you have multiple widgets of the same type to differentiate them since each of
them has different data on them.

73.Recall that positional arguments is where first variable must take first data input and the second
variable must take the second data input.
On the other hand,named arguments allow to mix the positions.

74.Note that in a form widget,we will use a TextFormField widget to receive data from a user.
mainAxisAlignmment.end will take a widget to the right of the row whereas, mainAxisAlignmment.start,will take
the widget to the beiginning of the row.
Validation Logic is just checking if all the form fields have been filled in or not.Another example is
expecting that a value betwwen 1 and say 100.
75.Parse will throw an error if the string cannot be converted to an integer whereas 
tryParse will return null.
76.Forms are given a formKey and this key is used to identify the form and do operations on it like
validating the form fields and saving the form fields.
77.Why a backend is necessary:
   - Data Persistence
   - User Authentication
   - Business Logic
   - Scalability
   - Integration with Third-Party Services
   - Data Stored Locally on Device is Volatile
78.Types of Backends:   
   - Backend as a Service (BaaS) which means using third party services like
        - Firebase
        - Supabase
        - AWS Amplify
        - Backendless
   - Custom Backend which means building your own backend using technologies like
        - Node.js with Express
        - Django (Python)
        - Ruby on Rails
        - Spring Boot (Java)
Backend stores data in databases like
        - SQL Databases (PostgreSQL, MySQL)
        - NoSQL Databases (MongoDB, Firebase Firestore) 
and thus,app users all over the world can access that data.
79.REST API is a set of rules and conventions for building and interacting with web services.
80.A flutter app can communicate with a backend server using HTTP requests to perform operations like
   - Creating Data (POST)
   - Reading Data (GET)
   - Updating Data (PUT/PATCH) where PUT is for full update and PATCH is for partial update
   - Deleting Data (DELETE)    i.e the CRUD
81. HTTP is a protocol used for communication between clients (like mobile apps)  so a flutter frontend and
 servers over the internet.
 FrontEnd sends HTTP requests to the backend server,which processes these requests and 
 sends back HTTP responses.
82. HTTP package in Flutter is used to make HTTP requests to interact with web services and APIs.
83.HTTP requests involve:
   - URL (Uniform Resource Locator) : The address of the resource on the server.
   - Method : The type of operation to be performed (GET, POST, PUT, DELETE).
   - Headers : Additional information sent with the request (like authentication tokens).
   - Body : Data sent with the request (for POST and PUT requests).
84.The HTTP response from the server includes:
   - Status Code : Indicates the result of the request (200 for success, 404 for not found, etc.).
   - Headers : Additional information about the response.
   - Body : The actual data returned from the server (often in JSON format).
85.Firebase is a Backend as a Service (BaaS) platform developed by Google that provides a suite of 
cloud-based services like databases and tools for building and managing mobile and web applications.
86.The firstWhere method is used to find the first element in a collection that satisfies
a given condition.Eg :
       var numbers = [1, 2, 3, 4, 5]
       var firstEven = numbers.firstWhere((number) => number % 2 == 0) hence the answer will be 2.
87.Any status code above 404,implies that there is an error.
88.Error Handling implies that if an error occurs,the app should not crash instead
it should handle the error gracefully and provide feedback to the user.
89.Try-Catch block is used for error handling in Dart.
The Try block contains the code that might throw an error,
and the Catch block contains the code that handles the error so what message should be shown to the user.
90.[newPlace, ...state] is called the spread operator and it is used to create a new list that contains all the elements of the existing state list.
91.The ListTile works with the 'onTap' property to detect taps on the entire tile.
92.Native Features For Flutter include:
   - Camera Access using   ImagePicker library.
   - GPS and Location Services using Google Maps or Geolocator package.
   - Push Notifications
   - File Storage
   - Sensors (Accelerometer, Gyroscope)
   - Contacts Access using contacts_service package.
   - Calendar Access
   - Microphone Access
93.Stack Widget allows you to overlay multiple widgets on top of each other.
94.Geocoding is the process of converting addresses into geographic coordinates (latitude and longitude)
The reverse geocoding is converting geographic coordinates into human-readable addresses which is usually done.
95.Permissions are required to access certain device features like camera and location.
The permission_handler package is used to request and manage permissions in a Flutter app.
96.Null Check Code Involves:
  Eg
      if (lat == null || lng == null) {
      return;
      }
97.CircleAvatar is used to get a circular image.
98.Set does not allow duplicate values whereas List allows duplicate values.
Eg :
     var mySet = <String>{'apple', 'banana', 'orange', 'apple'}; // 'apple' will only appear once
99.Sqflite is a popular package for local database storage in Flutter applications.
It provides a way to store, retrieve, and manage structured data using SQLite, 
a lightweight relational database engine.
100.Future means that the value will be available at some point in the future after 
some asynchronous operation is completed.
101.mainAxisAlignmment.center -- This is used to center widgets along the main axis of a Row or Column. (CENTER)
mainAxisAlignmment.spaceBetween -- This is used to distribute widgets evenly along the main axis with space between them.
mainAxisAlignmment.start -- This is used to align widgets to the start of the main axis. (LEFT)
mainAxisAlignmment.end -- This is used to align widgets to the end of the main axis. (RIGHT)

102.The KeyboardType Property is used to specify the type of keyboard to be displayed
when a TextField is focused.
Eg :  
     keyboardType: TextInputType.emailAddress, // For email input
     keyboardType: TextInputType.number, // For numeric input
     keyboardType: TextInputType.phone, // For phone number input
     keyboardType: TextInputType.multiline, // For multi-line text input
103.You can turn off autocorrect by using the property,
      autocorrect : false 
to ensure that the text entered is not changed by the keyboard.
104.TextCapitalization Property is used to control how the text input is capitalized.
Eg :
     textCapitalization: TextCapitalization.words, // Capitalizes the first letter of each word
     textCapitalization: TextCapitalization.sentences, // Capitalizes the first letter of each sentence
     textCapitalization: TextCapitalization.characters, // Capitalizes all characters
105.ObscureText Property is used to hide the text input, commonly used for password fields.
Eg :     
     obscureText: true, // Hides the text input
106.SDK stands for Software Development Kit.
It is a collection of tools, libraries, documentation, and code samples that developers use to create software applications 
for specific platforms or frameworks.An example is the Firebase SDK for Flutter which provides tools and libraries 
to integrate Firebase services into Flutter applications.
107.Flutter Can Be Connected To FireBase using flutterfire configure command.
108.
              HOW AUTHENTICATION WITH TOKENS WORKS
*  Flutter frontend collects user credentials (username and password) through a login form.
*  This stores and validates the credentials against a backend server or authentication service in terms 
of what it must receive.
* An authentication token (like JWT) is generated upon successful validation.
* This token is sent back to the Flutter frontend as part of the login response to be stored on the device.
* Attach tokens to requests for protected resources by including them in the Authorization header.
* There is verification of tokens on the backend server to ensure they are valid and not expired.
* Access is granted to protected resources if the token is valid; otherwise, an error response is returned.
* Tokens are refreshed before they expire to maintain user sessions without requiring re-login.
109.StreamBuilder produces multiple values over time whereas FutureBuilder produces a single value once.
StreamBuilder is usualy used for real-time data streams like chat messages or live updates.
110.
allow read,write: if request.auth != null
  This means if a user is authenticated,allow them to read and write to the DB.
111.cloud_firestore package is used to interact with Firestore database in Flutter applications.
112.
Firebase is a comprehensive mobile and web app development platform provided by Google. 
It is a suite of tools for building, hosting, and managing apps, offering services such as
  * Authentication (sign-in with email, Google, Facebook, etc.),
  * Databases (Firestore and Realtime Database),
  * Firebase Storage for files, Firebase Hosting, 
  * Cloud Functions for backend code, and analytics tools like Crashlytics 
  * Performance monitoring. 
Essentially, Firebase is the entire ecosystem for app development, not just a database.

Firestore, on the other hand, is a specific service within Firebase. 
It is a NoSQL cloud database designed to store and sync app data in real-time. 
Firestore uses a document-based structure where data is organized into collections, documents, and fields. 
It supports real-time updates, offline usage with automatic syncing, and can scale from small apps to large applications.
In summary, Firebase is the overarching platform for app development, 
while Firestore is a database service within Firebase for managing app data efficiently.
113.Usually for Usernames for a textFormField has the enableuggestions turned to false.
