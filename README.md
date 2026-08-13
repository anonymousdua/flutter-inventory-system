# Inventory Management (PHIX LAB)

A modern, responsive Inventory Management Dashboard built with Flutter. This project provides a clean interface for tracking products, managing categories, and monitoring stock levels.

## 🚀 Features

- **Dashboard Layout**: A professional sidebar navigation and header layout designed for desktop and tablet experiences.
- **Product Management**: Track product details including SKU, category, price, and variants.
- **Categorization**: Support for multiple product categories such as Clothing, Shoes, Bags, and Jewelry.
- **Variant Support**: Manage product variations like color, size, and material.
- **Stock Status**: Real-time status tracking (Active, Out of Stock).
- **Clean UI**: Built with Material Design and Cupertino icons for a familiar yet modern feel.

## 🛠 Tech Stack

- **Framework**: [Flutter](https://flutter.dev/)
- **Language**: [Dart](https://dart.dev/)
- **State Management**: StatefulWidget (expandable to Provider/Riverpod/Bloc)
- **Icons**: Cupertino Icons & Material Icons

## 📂 Project Structure

```text
lib/
├── data/           # Data models and mock data
│   ├── models/     # Product and category models
│   └── inventory_data.dart
├── screens/        # Main app screens
├── utils/          # Constants, themes, and helper functions
├── widgets/        # Reusable UI components (Sidebar, Header, etc.)
└── main.dart       # Entry point
```

## ⚙️ Getting Started

### Prerequisites

- Flutter SDK (v3.12.2 or higher)
- Android Studio / VS Code with Flutter extension
- An emulator or physical device

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/inventory_management.git
   ```
2. Navigate to the project directory:
   ```bash
   cd inventory_management
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the application:
   ```bash
   flutter run
   ```

## 🎨 Design

The application follows a professional "PHIX LAB" branding with a primary blue theme (`#0845ff`) and a clean light background (`#f4f5f7`).

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
