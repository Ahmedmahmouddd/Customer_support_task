💬 Customer Support App

A Flutter-based mobile application designed to simulate real-world customer support interactions. The app allows users to browse FAQs, contact support via chat, and upload a profile picture. It supports localization, real-time messaging with Firebase, and modern UI principles.


📸 Screenshots of the App
| **Screen**            | **Screenshot**                                                                 |
|-----------------------|-------------------------------------------------------------------------------|
| **Home Screen**       | <img src="https://github.com/user-attachments/assets/0194a51e-0cc4-441e-8eb1-3507746e1fb4" width="200"/> |
| **Chat Screen**       | <img src="https://github.com/user-attachments/assets/5c75936b-4920-424b-a80f-7333b55db1e1" width="200"/> |
| **Profile Screen**    | <img src="https://github.com/user-attachments/assets/dfe6adba-402c-4db0-916d-0d9cf7280a86" width="200"/> |
| **FAQs Screen**       | <img src="https://github.com/user-attachments/assets/1f3b2641-0e7f-42de-923b-f5353a8e833f" width="200"/> |
| **Contact Us Screen** | <img src="https://github.com/user-attachments/assets/696ff959-e40a-4600-9a0f-a225a7d8db4c" width="200"/> |



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
