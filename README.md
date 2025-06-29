![contact_us](https://github.com/user-attachments/assets/f378cf65-b3e1-42cb-b0a9-cd0fef023b8d)💬 Customer Support App

A Flutter-based mobile application designed to simulate real-world customer support interactions. The app allows users to browse FAQs, contact support via chat, and upload a profile picture. It supports localization, real-time messaging with Firebase, and modern UI principles.


📸 Screenshots of the App

| *Screen*            |*Screenshot*                                    |
|-----------------------|------------------------------------|
| *Home Screen*        |<img src="screenshot/home.png" width="170"/>     |
| *Chat Screen*        | <img src="screenshot/live_chat.png" width="170"/>     |
| *Profile Screen*     |<img src="screenshot/profile_picture.png" width="170"/> |
| *FAQs Screen*    | <img src="screenshot/FAQs.png" width="170"/> |
| *Contact Us Screen*   |<img src="screenshot/contact_us.png" width="170"/> |




✨ Features

🔐 Localization
Supports English and Arabic with intl package.
Dynamic text loading using .arb files and S.of(context) accessors.
💬 Live Chat with Firebase
Real-time chat feature using Firebase Firestore.
Messages are:
Sent and stored with timestamps.
Retrieved in real-time using streams.
Ordered by time on display.
Users can:
Send text messages.
Upload images (Firebase Storage).
Automatically scroll to the newest message.
🧠 FAQs Section with Smart Search
FAQs categorized into:
General
Account
Service
Built-in search bar that filters questions across all tabs.
Uses TextEditingController and filtering logic to update UI in real-time.
📞 Contact Us Screen
Direct communication options with support team:
Phone call (via url_launcher)
WhatsApp
GitHub and LinkedIn links
Navigation to the in-app support screen
👤 Profile Picture Upload
Upload and preview profile pictures.
Image picker integration (camera or gallery).
Uploaded to Firebase Storage.
Displays progress with loading indicator.
Stored download URL can be used later for backend/user profile.
📦 Architecture

MVVM + GetX state management
Organized folders:
views/ for screens
widgets/ for reusable UI
controllers/ for logic and state
data/ for services like Firebase interaction
🔧 Tech Stack

Technology	Purpose
Flutter	UI framework
Firebase	Chat, Storage, Realtime data
GetX	State management, routing
Image Picker	Select or capture images
URL Launcher	Open phone, WhatsApp, social media
Intl	Localization & Multi-language support
🧪 Notes

App simulates real support interactions without user authentication.
Profile pictures are uploaded anonymously.
Works on Android and iOS.
Build optimized for responsiveness and accessibility.
