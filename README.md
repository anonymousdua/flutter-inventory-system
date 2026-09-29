# Inventory Management (PHIX LAB)

A modern, responsive Inventory Management Dashboard built with Flutter. This project provides a clean interface for tracking products, managing categories, and monitoring stock levels.

## 🚀 Features

- **Inventory dashboard**: PHIX LAB header, icon-based side navigation, and a Products view.
- **Product inventory table**: Displays a product image, name, category, SKU, variant count and options, price, and stock status.
- **Product search**: Filters the sample inventory by product name, category, or price after at least three characters; clearing the search restores the full list.
- **Stock status labels**: Shows products as Active or Out of Stock.
- **Sample inventory data**: Includes Clothing, Shoes, Bags, and Jewelry categories, with Color and Size variant options in the sample products.
- **Image fallback**: Shows a placeholder when a product image cannot be loaded.
- **Dashboard controls**: Includes search, Filter and Export buttons, a New Product button, pagination, row checkboxes, and row action icons. Filter, Export, New Product, pagination, selection, and row actions are currently visual placeholders and do not perform these operations.
- **Navigation placeholders**: The other sidebar destinations are displayed, but only the Products view is implemented.
- **Material and Cupertino icons**: Uses Flutter's Material and Cupertino widget libraries for the interface.

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
   git clone https://github.com/anonymousdua/flutter-inventory-system.git
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
