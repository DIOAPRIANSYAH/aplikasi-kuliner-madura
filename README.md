
# 📱Aplikasi Edukasi Kuliner Madura

An application that can be accessed by the public to get to know Madurese culinary dishes that are rarely known by people from outside Madura. With this application, it is hoped that it will become an educational medium for various kinds of culinary arts, culinary history and procedures for cooking Madura culinary arts for everyone that can be accessed anywhere and anytime.


## 👤 Tentang Saya
I am Dio Apriansyah, a student at the State Polytechnic of Malang who is carrying out the Semester 4 Mobile Programming UAS project in the DIII-Informatics Management Study Program out of main campus (PSDKU) in Pamekasan, East Java.


## 👨‍💻 Getting Started


Clone the project and paste on terminal from directory project

```bash
  git clone https://link-to-project(https://github.com/DIOAPRIANSYAH/aplikasi-kuliner-madura)
```
Open terminal IDE to move projet patch

```bash
  cd src/flutter_uas
```

Then, install all dependencies

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
I'm provide another ways to login beside of google sign in. I have make register form and users should to fill it comprehensively. Then, it'll save direictly on my own firebase account.

Google Sign In | Email and Password Auth 
---|---
<img width="200" alt="018" src="docs\screenshoot_project\gif\login.gif"> | <img width="200" alt="018" src="docs\screenshoot_project\gif\register.gif">

it'll prove as the screenshoot below :
Users Authentications on Firebase |  
---|
<img width="600" alt="018" src="docs\screenshoot_project\images\16.jpg"> | 


### Interface Application

### Landing Pages

| Splashscreen | 
| :-------- | 
| <img width="200" alt="018" src="docs\screenshoot_project\images\1.jpg"> |  

### After Landing Pages

Login Page | Register Page
---|---
<img width="200" alt="018" src="docs\screenshoot_project\images\2.jpg"> | <img width="200" alt="018" src="docs\screenshoot_project\images\3.jpg">

### Bottom Bar Home Menu

Home Page | Detail Food Page 
---|---
<img width="200" alt="018" src="docs\screenshoot_project\gif\home.gif"> | <img width="200" alt="018" src="docs\screenshoot_project\images\5.jpg">

### Bottom Bar API Food Menu

API Foods Page | Detail API Foods Page 
---|---
<img width="200" alt="018" src="docs\screenshoot_project\images\6.jpg"> | <img width="200" alt="018" src="docs\screenshoot_project\images\7.jpg">

### Bottom Bar CRUD Menu

Add Foods Page | Update Foods Page | Show Foods Page 
---|---|---
<img width="200" alt="018" src="docs\screenshoot_project\images\8.jpg"> | <img width="200" alt="018" src="docs\screenshoot_project\images\9.jpg"> | <img width="200" alt="018" src="docs\screenshoot_project\images\10.jpg">

### Bottom Bar Contact Menu

Profil Visitor Page | Detail Profil Visitor Page 
---|---
<img width="200" alt="018" src="docs\screenshoot_project\gif\profil.gif"> | <img width="200" alt="018" src="docs\screenshoot_project\images\12.jpg">

### Bottom Bar Logout Menu

Logout Page | Alert Logout Page 
---|---
<img width="200" alt="018" src="docs\screenshoot_project\gif\logout.gif"> | <img width="200" alt="018" src="docs\screenshoot_project\images\14.jpg">

### Button Drawer

Drawer Slider |  
---|
<img width="200" alt="018" src="docs\screenshoot_project\gif\drawer.gif"> | 


### Animations
I made an animation to give luck on my application and let the user get the best experience when surfing it. To looks dynamic I'm add several animations such text, images, button and routes transitions.

Waves Text & Appear Image | Button Approval | Route Transitions 
---|---|---
<img width="200" alt="018" src="docs\screenshoot_project\gif\splash.gif"> | <img width="200" alt="018" src="docs\screenshoot_project\gif\signin.gif"> | <img width="200" alt="018" src="docs\screenshoot_project\gif\route.gif">
