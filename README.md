
# 📱Aplikasi Edukasi Kuliner Madura

An application that can be accessed by the public to get to know Madurese culinary dishes that are rarely known by people from outside Madura. With this application, it is hoped that it will become an educational medium for various kinds of culinary arts, culinary history and procedures for cooking Madura culinary arts for everyone that can be accessed anywhere and anytime.


## 👤 Tentang Saya
I am Dio Apriansyah, a student at the State Polytechnic of Malang who is carrying out the Semester 4 Mobile Programming UAS project in the DIII-Informatics Management Study Program out of main campus (PSDKU) in Pamekasan, East Java.


## 👨‍💻 Getting Started


Clone the project and paste on terminal from directory project

```bash
  git clone https://link-to-project
```

Open terminal IDE to install all dependencies

```bash
  flutter pub get
```

Running Project

```bash
  flutter run
```



## ⚙️ Features

- Login with google sign in
- Login with email and authentication
- Login with existing credentials
- User registration with validation
- Error messaging for invalid inputs
- Image and text animated
- Button and icon animated
- Loading animation
- Dynamic CRUD by sqllite
- Automation Corausel at home page
- Showing food card with vertical and horizontal listview
- Pop-up when would to delete food and logout
- Attach an image through input assets image name

## 🖥️ Technologies Used

- Flutter SDK
- Dart programming language
- Visual Studio Code, Android Studio
## 🕵️‍♀️ Introduction to the Developer

> If you have a strong interest in Flutter and have been slow to act, then don't hesitate, hurry up! This project is perfect for getting started with Flutter.


Let me introduce you to the internal structure of this project.


### Packages


Some very good packages are used in the project, and I am especially grateful to these developers for keeping my hair healthy.


Below are the information about these packages.


**package** | **explain**
---|---
  cupertino_icons: ^1.0.2 | icon library
  diamond_bottom_bar: ^1.0.0 | bottom bar
  fluttertoast: ^8.2.2 | toast
  path_provider: ^2.0.5 | path provider
  sqflite: ^2.2.8+4 | database sqllite
  animated_text_kit: ^4.2.2 | text animation
  rflutter_alert: ^2.0.3 | alert notification 
  cached_network_image: ^3.0.0 | cached network image
  flutter_rating_bar: ^4.0.0 | rating bar
  image_card: ^0.0.4 | image card
  carousel_slider: ^4.2.1 | carousel slider
  google_sign_in: ^6.1.4 | google sign in
  firebase_core: ^2.14.0 | firebase core
  icon_loading_button: ^1.0.1 | icon loading
  google_fonts: ^4.0.4 | google fonts
  phosphor_flutter: ^2.0.0 | phospor flutter
  coolicons: ^1.0.0 | icon library
  firebase_auth: ^4.6.3 | firebase auth
  flutter_neumorphic: ^3.2.0 | neumorphic
  route_transitions: ^2.0.1 | route transition
  circular_clip_route: ^0.2.0+3 | circular clip route
  animated_button: ^0.2.0 | button animation
  loading_animations: ^2.2.0 | loading animation



### Directory Structure

The project directory structure is as follows:

```
├── .dart_tool
├── .idea
├── android
├── assets
├── build
├── ios
├── lib
├── linux
├── macos
├── test
├── web
├── windows
├── .flutter-plugins
├── .flutter-plugins-dependencies
├── .gitignore
├── .metadata
├── analysis_options.yaml
├── flutter_uas.iml
├── pubspec.lock
├── pubspeck.yaml
└── README.md

```
## API References

| Nama          | Url       | Description                       |
| :--------     | :------- | :-------------------------------- |
| **TheMealDB** | https://www.themealdb.com/api.php | TheMealDB was built in 2016 to provide a free data source api for recipes online in the hope that developers would build applications and cool projects ontop of it. TheMealDB originated on the Kodi forums as a way to browse recpies on your TV. |

#### Get all items 

```http
Future<void> fetchMeals() async {
    final response = await http.get(
        Uri.parse('https://www.themealdb.com/api/json/v1/1/search.php?s='));

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      if (mounted) {
        setState(() {
          meals = responseData['meals'];
        });
      }
    } else {
      // Jika terjadi kesalahan saat mengambil data dari API
      throw Exception('Failed to load meals');
    }
  }
```

## 👩‍💻 Introduction to the Users

[Source of inspiration](https://dribbble.com/shots/3812962-iPhone-X-Todo-Concept)


> “One Day list ”
is a small, simple and beautiful app，
It can help you keep track of your daily plans.
If you happen to have the habit of writing a mission plan, then it must be perfect for you.

For users and developers, I will introduce them separately

Before we start, you can take a look at the demo:


<img width="200" alt="018" src="https://user-images.githubusercontent.com/30992818/63140875-f80da200-c015-11e9-8b14-60d6725620f1.gif"/>
## Introduction to the user


### Interface Application


In the app, you can switch between the theme colors in the theme switching interface.The app comes with six default themes, which are the color combinations I've chosen over many attempts. You can also choose a custom theme color.

### Landing Pages

| Splashscreen | 
| :-------- | 
| <img width="200" alt="018" src=""> |  

### After Landing Pages

Login Page | Register Page
---|---
<img width="200" alt="018" src=""> | <img width="200" alt="018" src="">

### Bottom Bar Home Menu

Home Page | Detail Food Page 
---|---
<img width="200" alt="018" src=""> | <img width="200" alt="018" src="">

### Bottom Bar API Food Menu

API Foods Page | Detail API Foods Page 
---|---
<img width="200" alt="018" src=""> | <img width="200" alt="018" src="">

### Bottom Bar CRUD Menu

Add Foods Page | Update Foods Page | Show Foods Page 
---|---|---
<img width="200" alt="018" src=""> | <img width="200" alt="018" src=""> | <img width="200" alt="018" src="">

### Bottom Bar Contact Menu

Profil Visitor Page | Detail Profil Visitor Page 
---|---
<img width="200" alt="018" src=""> | <img width="200" alt="018" src="">

### Bottom Bar Logout Menu

Logout Page | Alert Logout Page 
---|---
<img width="200" alt="018" src=""> | <img width="200" alt="018" src="">

### Button Drawer

Drawer Slider |  
---|
<img width="200" alt="018" src=""> | 