📦 Products Screen App

🚀 About the App
This is a simple Products Screen App built using Flutter, leveraging Clean Architecture principles, Cubit/Bloc for state management, and Dio for API interaction. The app fetches product data from an API, displays it in a grid layout, and ensures maintainability and scalability with dependency injection.

🛠️ Features
Clean Architecture: Ensures clear separation of concerns between the data, domain, and presentation layers.
State Management: Implements Cubit and Bloc for efficient state handling.
Dependency Injection: Configured with GetIt and Injectable for seamless dependency management.
API Integration: Uses the Dio package for fast and efficient HTTP requests.
Reusable Components: Widgets like ProductItem and ErrorIndicator improve code modularity.
Error Handling: Comprehensive error handling with DioException.
Responsive UI: Automatically adjusts for different screen sizes and orientations.

⚙️ Technologies Used
Languages: Dart
Framework: Flutter
State Management: Bloc, Cubit
API Handling: Dio
Dependency Injection: GetIt, Injectable
Architecture: Clean Architecture
Tools: Android Studio, VS Code, Git


📂 Project Structure
The project is organized using Clean Architecture:

lib/
├── core/
│   ├── di/                      # Dependency injection setup
│   ├── error/                   # Error handling utilities
│   ├── resources/               # App-wide constants and themes
│   ├── widgets/                 # Shared widgets (e.g., LoadingIndicator, ErrorIndicator)
├── feature/
│   ├── products/
│       ├── data/                # Data layer
│       │   ├── data_source/     # Remote data sources
│       │   ├── mappers/         # Mappers for converting models to entities
│       │   ├── model/           # API response models
│       ├── domain/              # Domain layer
│       │   ├── entities/        # Domain entities
│       │   ├── repositories/    # Repository interface
│       │   ├── use_cases/       # Business logic (use cases)
│       ├── presentation/        # Presentation layer
│           ├── cubit/           # Cubit for state management
│           ├── widgets/         # UI components
│           ├── screens/         # Main screens