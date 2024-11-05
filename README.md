# MovieDatabaseApp
A SwiftUI-based iOS application that allows users to browse and filter a database of movies. Users can search and filter movies by title, year, genre, director, and actors. Built with MVVM architecture to ensure clean code separation and easy data management.

## Features
**1. Search:** Quickly search for movies by title, genre, director, actors, or year.

**2. Filter:** Browse movies filtered by categories like year, genre, director, and actors.

**3. Expandable Sections:** Intuitive UI sections for filter options that expand and collapse for easy navigation.

**4. Dynamic Data Loading:** Movies are loaded from a JSON file included in the app bundle.

## Dashboard
Here’s a screenshot of the main dashboard:

![Untitled design (1)](https://github.com/user-attachments/assets/2c84426d-5e34-4773-be37-8e713b4c9786)

## Search
Below is the screenshot of the search movie:

![Simulator Screen Shot - iPhone 14 Pro - 2024-11-05 at 17 57 56](https://github.com/user-attachments/assets/ccb2d5f6-94d3-423f-b778-89e1d71a1936)

## Movies List
Below is the screenshot of the movies List:

![Simulator Screen Shot - iPhone 14 Pro - 2024-11-05 at 17 58 41](https://github.com/user-attachments/assets/9e91ba9f-02db-471d-a3b9-0286d33eb7a5)

## Movies Details
Here’s a screenshot of the Movie Details:

![Simulator Screen Shot - iPhone 14 Pro - 2024-11-05 at 17 58 58](https://github.com/user-attachments/assets/1c19144e-4db4-47d9-ab02-816c46eaf0fe)

# Technologies Used
-> Swift 5

-> SwiftUI

-> Combine

-> MVVM architecture

-> Codable for JSON decoding

-> XCTest for unit testing

# Architecture
This project follows the MVVM (Model-View-ViewModel) architecture pattern. The responsibilities are split as follows:

**Model**: Defines the Movie structure and the API error types.

**View**: The SwiftUI views (e.g., MovieDatabaseView, FilterSectionView) handle the presentation layer and user interactions.

**ViewModel**: (MovieViewModel) manages the business logic, state, and interacts with the json file to fetch data.

# movies.json
The movies.json file contains an array of movie objects, each representing a unique movie with details such as title, year, genre, director, and more. This file is used as a data source for the Movie Database App.

# Installation
To run the project, follow these steps:
1. Clone the repository.
   ```bash
   git clone https://github.com/pintu-iOS/MovieDatabaseApp.git
2. Open the project in Xcode.
3. Select the appropriate scheme and run it on the iOS Simulator or a physical device.

# Compatibility
This app is compatible with:
iOS 16.2 and above

# Testing
The app has been tested on:
iOS 16.2

# Unit Testing
Unit tests have been written for the following components:

**MovieModelTests.swift:** This file contains unit tests for the Movie model, ensuring correct parsing of JSON data and validation of model properties. It checks that the model conforms to Codable and Identifiable and verifies the expected behavior of optional fields and enum cases.

**MovieViewModelTests.swift:** This file tests the MovieViewModel, validating search and filter functionality. 

Tests include:

**Filtering:** Ensures that filters by year, genre, director, and actors return the correct list of movies.

**Search:** Verifies that the search logic correctly matches movies by title, genre, director, actors, and year.

**Data Loading:** Tests that loadMovies properly loads data into movies and updates filteredMovies correctly.
