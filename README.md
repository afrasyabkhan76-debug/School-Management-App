# 🎓 School Management App

A School Management App built with **Flutter and Dart** to practice mobile app development, UI design, and project structure using Clean Architecture principles.

This project provides a simple interface for managing student and teacher records, with a modern blue and purple design.

## ✨ Features

- 🔐 **Sign In & Sign Up** — Authentication screens with form validation.
- 📊 **Dashboard** — Displays total student and teacher counts.
- 👨‍🎓 **Student Management** — Add new students and view student records.
- 👨‍🏫 **Teacher Management** — Add new teachers and view teacher records.
- 🎨 **Modern UI** — Attractive blue and purple theme.
- 📱 **Responsive Design** — Designed to work across supported screen sizes.
- 🧩 **Reusable Widgets** — Shared UI components for cleaner code.
- 🧭 **Navigation** — Move between authentication, dashboard, and record screens.

## 🛠️ Technologies Used

- **Flutter** — User interface development.
- **Dart** — Programming language.
- **Material Design** — UI components and styling.
- **Git & GitHub** — Version control and project hosting.

## 🏗️ Clean Architecture & Project Structure

While developing this project, I learned the fundamentals of **Clean Architecture** and how to organize Flutter code into separate features and responsibilities.

The project uses a beginner-friendly, feature-based structure inspired by Clean Architecture principles.

```text
lib/
├── main.dart
├── core/
│   └── theme/
│       └── app_theme.dart
└── features/
    ├── auth/
    │   ├── pages/
    │   └── widgets/
    ├── dashboard/
    │   ├── pages/
    │   └── widgets/
    ├── students/
    │   ├── data/
    │   ├── pages/
    │   └── widgets/
    └── teachers/
        ├── data/
        ├── pages/
        └── widgets/
```

### What Each Folder Does

- **Core:** Contains shared app configuration, such as the theme.
- **Features:** Separates the app into authentication, dashboard, students, and teachers.
- **Pages:** Contains screens and their UI logic.
- **Widgets:** Holds reusable UI components.
- **Data:** Stores sample student and teacher records.

### What I Learned About Clean Architecture

- Separation of concerns and code organization.
- Feature-based project structure in Flutter.
- Reusable widgets and maintainable code.
- Navigation between screens.
- Form validation and handling user input.
- Managing in-memory data and displaying dynamic record counts.

*Note: This project uses a simplified, feature-based structure inspired by Clean Architecture. It does not implement every layer of a complete Clean Architecture design.*

## 📂 Project Scope

This is a **UI-focused learning project**. It does not use Firebase, an external API, or a database.

- Sample student and teacher records are provided.
- Newly added records remain available in memory while the app is running.
- Records reset when the application restarts.
- Sign In and Sign Up are demonstration screens, not production authentication.

## 🚀 Getting Started

### Prerequisites

- Flutter SDK
- Dart SDK
- Android Studio or Visual Studio Code
- An emulator, Android device, or supported browser

### Installation

**1. Clone the repository**

```bash
git clone https://github.com/afrasyabkhan76-debug/School-Management-App.git
```

**2. Open the project folder**

```bash
cd School-Management-App
```

**3. Install dependencies**

```bash
flutter pub get
```

**4. Run the application**

```bash
flutter run
```

## 🎯 Project Goal

The main goal of this project is to strengthen my Flutter development skills, understand better
