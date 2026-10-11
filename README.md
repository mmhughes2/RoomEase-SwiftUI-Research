# RoomEase Mini — SwiftUI Research Milestone

## Project Overview

For my Capstone Research Milestone, I researched Swift and SwiftUI as potential technologies for developing RoomEase, a household management application designed to help roommates stay organized and manage shared responsibilities.

To gain hands-on experience with SwiftUI, I created RoomEase Mini, a simplified household shopping list application. This project allowed me to explore user interface development, state management, user input, and interactive functionality.

The goal of this research was to better understand the technologies our team plans to use and evaluate their advantages, limitations, and requirements before beginning development of the full RoomEase application.

## 1. Technologies Researched

### Swift

Swift is a programming language developed by Apple for building applications across Apple platforms, including iOS, iPadOS, and macOS.

**Advantages:**
- Modern syntax that is relatively easy to read and understand.
- Strong type safety, which helps prevent common programming errors.
- Designed to work with Apple's development frameworks.
- Supports object-oriented and functional programming concepts.

**Limitations:**
- Native iOS development generally requires Apple's development tools.
- Learning Swift's syntax and concepts can take time for developers coming from other languages.

**What I Learned:**

Through this project, I learned how to create variables, structures, functions, and arrays in Swift. I also practiced using conditional statements and functions to manage user input.

For example, I created a `ShoppingItem` structure to represent individual items on the shopping list. Each item contains a unique identifier, name, category, and purchased status.

I also used functions to add and delete items and calculated how many items remained to be purchased.

### SwiftUI

SwiftUI is Apple's declarative framework for building user interfaces.

Instead of manually controlling every interface update, developers describe how the interface should appear based on the application's current data.

**Advantages:**
- Reduces the amount of code needed to build interfaces.
- Provides built-in components such as buttons, text fields, lists, and pickers.
- Automatically updates the interface when state changes.
- Integrates with Apple's operating systems and frameworks.

**Limitations:**
- Primarily designed for Apple platforms.
- Some advanced customization may require additional frameworks or techniques.
- Developers must understand SwiftUI's state management and data flow.

**What I Learned:**

One of the most important concepts I learned was how SwiftUI uses state to manage interactive applications.

I used `@State` to store shopping list items, the user's text input, and the selected category.

When a user adds an item or marks an item as purchased, SwiftUI automatically updates the displayed list and counters.

I also learned how to use `VStack` and `HStack` to organize interface elements vertically and horizontally.

## 2. Alternative Frameworks Considered

Before selecting SwiftUI, I researched other options for developing the application.

| Framework | Advantages | Limitations |
|---|---|---|
| SwiftUI | Native Apple development, modern interface components, automatic UI updates | Focused on Apple platforms |
| UIKit | Mature framework with extensive customization options | Often requires more manual interface management |
| React Native | Supports development for both iOS and Android using shared JavaScript or TypeScript code | May require additional dependencies and platform-specific configuration |

**Conclusion:**

SwiftUI is a promising option for RoomEase because it provides a straightforward way to build native Apple interfaces and manage interactive application data.

However, the team must consider platform availability. If RoomEase needs to support Android devices or web browsers, a cross-platform solution may be more appropriate.

## 3. Development Environment

### Swift Playgrounds

Because I did not have access to a Mac, I used Swift Playgrounds on my iPad to develop and test my application.

Swift Playgrounds allows developers to write Swift code, build SwiftUI interfaces, and run applications directly on compatible iPads.

**Advantages:**
- Free to download.
- Allows SwiftUI development without a Mac.
- Provides an interactive environment for testing applications.
- Useful for learning Swift and experimenting with app features.

**Limitations:**
- Does not provide every feature available in Xcode.
- Some advanced debugging, testing, and project management workflows are more convenient in Xcode.
- Managing GitHub repositories and project files can be less straightforward on an iPad.

**What I Learned:**

I learned how to create a SwiftUI app project, edit Swift source files, and run the application directly on my iPad.

I also learned that Swift Playgrounds is useful for developing smaller applications and prototypes, even without access to a traditional Mac development environment.

### Xcode

I also researched Xcode, Apple's primary integrated development environment.

Xcode provides tools for building, debugging, testing, and distributing applications.

Although I did not use Xcode for this project, I learned that it would be beneficial for more advanced development as RoomEase grows.

## 4. Swift Package Manager

Swift Package Manager (SPM) is the package management system used to manage reusable Swift code and external dependencies.

It allows developers to include libraries in their projects without manually copying all of the library's source code.

**What I Learned:**

I researched how Swift Package Manager uses package manifests, such as `Package.swift`, to define project information, targets, dependencies, and platform requirements.

I also learned that developers can add external Swift packages using repository URLs and specify acceptable dependency versions.

Swift Package Manager resolves compatible versions and integrates the packages into the project.

For my RoomEase Mini application, I used SwiftUI's built-in components, so I did not need to install additional third-party libraries.

In the future, Swift Package Manager could help our team incorporate additional functionality while keeping dependencies organized.

## 5. Sample Application: RoomEase Mini

I created a household shopping list application to practice SwiftUI development.

### Features Implemented

**Add Shopping Items**

Users can enter the name of an item and select Add to include it in their shopping list.

**Shopping Categories**

Users can assign items to one of four categories:
- Groceries
- Cleaning
- Bathroom
- Other

**Mark Items as Purchased**

Users can toggle an item's purchased status. Purchased items are displayed with a strikethrough.

**Delete Shopping Items**

Users can remove items from their shopping list using swipe-to-delete functionality.

**Shopping Progress Tracking**

The application displays the number of remaining and purchased items. These values update automatically when the shopping list changes.

**Customized Interface**

I customized the application with RoomEase branding, green interface elements, icons, and an empty-list message.

### SwiftUI Components Used

| Component | Purpose |
|---|---|
| `@State` | Stores and updates application data |
| `TextField` | Accepts user input |
| `Button` | Adds shopping items |
| `Picker` | Allows category selection |
| `List` | Displays shopping items |
| `Toggle` | Changes purchased status |
| `VStack` | Arranges elements vertically |
| `HStack` | Arranges elements horizontally |
| `NavigationStack` | Provides navigation structure |
| `ForEach` | Displays repeated list items |

## 6. Testing and Results

I tested the application directly on my iPad using Swift Playgrounds.

The testing process included:
1. Adding multiple shopping items.
2. Assigning different categories.
3. Marking items as purchased.
4. Checking that the purchased and remaining counters updated.
5. Deleting shopping items.
6. Confirming that the empty-list message appeared when no items remained.

The implemented features worked during testing.

One limitation of the current prototype is that shopping items are stored temporarily in memory. The application does not yet save items between sessions.

Future development could use SwiftData or another persistence solution to store household information.

## 7. Challenges Encountered

One of the biggest challenges I encountered was developing a SwiftUI application without a Mac.

Since Xcode is not available on iPad, I researched alternative development environments and selected Swift Playgrounds.

Another challenge was transferring my SwiftUI project to GitHub. I explored using Working Copy, an iPad Git client, but encountered difficulties managing the project and repository.

I ultimately uploaded my project files through GitHub's web interface.

These challenges helped me understand the importance of development environments, version control, project organization, and choosing tools that work with available hardware.

## 8. Application to the RoomEase Capstone Project

This research provided a foundation for developing features in the full RoomEase application.

The shopping list prototype demonstrates several concepts that can be reused in the larger project, including:

- Collecting and validating user input.
- Displaying dynamically changing information.
- Organizing information into categories.
- Updating interface elements based on application state.
- Creating reusable components for household management.

Additional technologies will likely be necessary for a complete RoomEase application, particularly for user authentication, shared household data, persistent storage, and communication between roommates.

The team will need to evaluate backend and database options before implementing those features.

## 9. Final Reflection

Overall, this research milestone helped me gain a better understanding of Swift, SwiftUI, and the tools involved in developing an iOS application.

Before this project, I had limited hands-on experience with SwiftUI. By creating RoomEase Mini, I gained practical experience working with interface components, managing application state, and implementing user interactions.

I also learned the importance of understanding a framework's limitations, researching development tools, and managing source code through GitHub.

Although RoomEase Mini is a small prototype, it helped me build foundational skills that I can apply to our team's capstone project.

## 10. Resources

- [Swift Programming Language](https://www.swift.org/documentation/)
- [Apple SwiftUI Documentation](https://developer.apple.com/documentation/swiftui/)
- [Swift Playgrounds Documentation](https://developer.apple.com/documentation/swift-playgrounds/)
- [Swift Package Manager Documentation](https://docs.swift.org/package-manager/)
- [Apple Xcode Documentation](https://developer.apple.com/documentation/xcode/)
- [React Native Documentation](https://reactnative.dev/)
- [Apple UIKit Documentation](https://developer.apple.com/documentation/uikit/)
