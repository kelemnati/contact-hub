Contact Hub
A simple and efficient contact management app that allows users to add, edit, search, and organize contacts. The Contact Hub app is designed with clean architecture principles and uses Firebase for backend services.

Project Overview
Contact Hub enables users to manage their contacts with fields such as name, phone number, and optional photo, description, and nickname. The app supports features like contact favorites, searching by name or phone number, editing, and account management (e.g., sign-up, login, logout, and account deletion).

Features
User Authentication: Secure login, sign-up, and account management functionality using Firebase.
Contact Management: Add, edit, delete, and view details for contacts.
Favorites: Mark contacts as favorites for quick access.
Search: Easily search contacts by name or phone number.
Clear Architecture: Organized and maintainable folder structure.
User Model
The UserModel class represents a user in the app. It contains fields such as:

id: Unique identifier for the user.
email: User’s email address.
name: User’s display name.
picture: URL or file path for the user’s profile picture.
Example UserModel
dart
Copy code
class UserModel {
final String id;
final String email;
final String name;
final String picture;

UserModel({required this.id, required this.email, required this.name, required this.picture});

MyUserEntity toEntity() {
return MyUserEntity(id: id, email: email, name: name, picture: picture);
}
}
This model includes a toEntity() method to convert the UserModel instance to an entity for data storage.

Getting Started
Prerequisites
Flutter SDK
Firebase account (for backend services)
Installation
Clone this repository.
bash
Copy code
git clone https://github.com/your-username/contact-hub.git
cd contact-hub
Install dependencies.
bash
Copy code
flutter pub get
Set up Firebase for authentication and configure it in the app.
Running the App
To start the app, run:

bash
Copy code
flutter run
License
This project is licensed under the MIT License.
