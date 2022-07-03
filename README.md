# Flutter eCommerce App

Product List             |  Product Detail              
:-------------------------:|:-------------------------:
<img src="https://user-images.githubusercontent.com/54096088/177034501-08dad691-49c6-4105-abfc-f0c3bedf0f2a.PNG" alt="drawing" style="width:200px;"/> |  !<img src="https://user-images.githubusercontent.com/54096088/177034506-7ef9b1b5-ae5a-4ae2-b6b6-6758389e355b.PNG" alt="drawing" style="width:200px;"/> |


This project is created with flutter and supports both ios, android and the web.
To start, clone the repository branches mentioned below:



## Getting Started

This app contains the minimal implementation required to create a new library or project. The repository code is preloaded with some basic components like basic app architecture, app theme, constants and required dependencies to create a new project. By using boiler plate code as standard initializer, we can have the same patterns in all the projects that will inherit it. This will also help in reducing setup & development time by allowing you to use same code pattern and avoid re-writing from scratch.

## How to Use

**Step 1:**

1. Make sure Dart/Flutter is installed correctly https://flutter.dev/docs/get-started/install
2. Download or clone this repo by using the link below:

```
git clone https://github.com/Jens-source/flutter_test.git
```


**Step 2:**

Go to project root and execute the following command in console to get the required dependencies:

```
flutter pub get 
```

**Step 3:**

This project uses `inject` library that works with code generation, execute the following command to generate files:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch
```

From the project root directory, run```dartdoc```. To speed up this proccess, it might be helpful to exclude some default dart files with ```dartdoc --exclude 'dart:ui,dart:async,dart:collection,dart:convert,dart:core,dart:developer,dart:math,dart:typed_data,dart:ffi,dart:io,dart:isolate,dart:html,dart:js,dart:js_util';```
DO NOT upload the generated files to Github. If we want these to be readily available to everyone, they should be hosted somewhere else.


## Hide Generated Files

In-order to hide generated files, navigate to `Android Studio` -> `Preferences` -> `Editor` -> `File Types` and paste the below lines under `ignore files and folders` section:

```
*.inject.summary;*.inject.dart;*.g.dart;
```

In Visual Studio Code, navigate to `Preferences` -> `Settings` and search for `Files:Exclude`. Add the following patterns:
```
**/*.inject.summary
**/*.inject.dart
**/*.g.dart
```

## Test App Features:

* Splash
* Material Design
* GetX (State Management and more)
* Google Fonts



### Libraries & Tools Used

* [Splash screen](https://pub.dev/packages/flutter_native_splash)
* [Material Design](https://docs.flutter.dev/development/ui/widgets/material)
* [Get](https://pub.dev/packages/get)
* [Google Fonts](https://pub.dev/packages/google_fonts)


### Folder Structure
Here is the core folder structure which flutter provides.

```
fluttertestindex/
|- android
|- ios
|- web
|- lib
|- assets
|- test
```

Here is the folder structure we have been using in this project

```
lib/
|- core/
|- presentation/

```

Now, lets dive into the lib folder which has the main code for the application.

```
3- controllers - Contains store(s) for state-management of your application, to connect the reactive data of your application with the UI. 
4- presentation - Contains all the ui of your project, contains sub directory for each screen.
5- utils - Contains the common file(s) and utilities used in a project.
9- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.
```




### Controllers

The controllers are where all your application state lives in flutter. It's is basically a widget that stands at the top of the widget tree and passes it's data down using special methods. In-case of multiple stores, a separate folder for each store is created as shown in the example below:

```
controllers/
|- 
```

### Presentation

This directory contains all the ui of your application. Each screen is located in a separate folder making it easy to combine group of files related to that particular screen. All the screen specific widgets will be placed in `widgets` directory as shown in the example below:

```
presentation/
|- 
```

### Utils

Contains the common file(s) and utilities used in a project. The folder structure is as follows:

```
utils/
|- 
```



### Main

This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.

```dart



void main()  {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: OnBoardingBindings(),
      initialRoute: AppPages.initial,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      theme: Themes.light,
      darkTheme: Themes.dark,
      title: Constants.appTitle,
    );
  }
}



```



## Wiki

Checkout this [website](https://google.com) for more info

## Distribution

Obfuscate the code by running these commands. The outputs are needed when you want to deobfuscate the app. You can set the output path to whatever you want. If you think you might need to deobfuscate the app in the future, store these files in a secure location outside of the build folder.
* **Android**:
1. flutter clean
2. flutter build apk --debug
3. flutter build apk --profile
4. flutter build appbundle --obfuscate --split-debug-info=build/app/outputs/obfuscated


* **iOS**:
1. flutter build ios --obfuscate --split-debug-info=build/app/outputs/obfuscated


# awesome-flutter-ecommerce
