import SwiftUI

struct ContentView: View {
    @State private var points = 1000
    @State private var selectedTab = 0 // For tab view

    // Alerts for chapter purchases
    @State private var showAlert2a = false
    @State private var showAlert2b = false
    @State private var showAlert3a = false
    @State private var showAlert3b = false
    @State private var showAlert4a = false
    @State private var showAlert4b = false

    // Chapter unlock states
    @State private var AChap2Unlocked = false
    @State private var AChap3Unlocked = false
    @State private var AChap4Unlocked = false

    // Chapter point costs
    let AChap2Cost = 50
    let AChap3Cost = 75
    let AChap4Cost = 100

    // Confirmation messages
    let purchaseSuccess = "You have enough points for this!"
    let purchaseFailure = "You do not have enough points for this..."

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeScreen()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)

            ChapterSelection()
                .tabItem {
                    Label("Chapters", systemImage: "books.vertical")
                }
                .tag(1)
        }
    }
}

struct HomeScreen: View {
    var body: some View {
        VStack {
            Text("Home")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Welcome to DreamQuest")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title3)

            // ... other buttons and content for Home screen
        }
        .padding()
    }
}

struct ChapterSelection: View {
    var body: some View {
        List {
            NavigationLink(destination: Chapter1View()) {
                Text("Chapter 1: The Magical Book")
            NavigationLink(destination: BookAChapter2()) {
                    Text("Chapter 2: The Forest of Whispers")
            }
            // Add more chapters here
        }
    }
}

struct Chapter1View: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Chapter 1: The Magical Book")
                    .font(.largeTitle .bold())
                Image(systemName: "book")
                    .font(.system(size: 110))
                Text("Alex was a curious child, always exploring and searching for hidden treasures in their small town. One rainy afternoon, while rummaging through the dusty attic of their house, Alex stumbled upon an old, leather-bound book. The cover was adorned with intricate patterns and a golden lock, but to Alex’s surprise, it opened easily. Inside, the pages were filled with strange symbols and beautiful illustrations of fantastical creatures and landscapes.As Alex turned the pages, a soft glow began to emanate from the book. Suddenly, a burst of light enveloped Alex, and in an instant, he found himself standing in a lush, green forest. Startled but excited, Alex realized the book had transported him to a new world. This was the beginning of their incredible journey in DreamQuest.")
                    .font(.title)
                    .padding(25)
            }
        }
        .padding()
    }
}

struct BookAChapter2: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Chapter 2: The Forest of Whispers")
                    .font(.largeTitle .bold())
                Image(systemName: "book")
                    .font(.system(size: 110))
                Text("In the Forest of Whispers, Alex met Luna, a moon fairy with shimmering wings and a gentle smile. Luna explained that the magical book Alex found had the power to transport them to different realms. Each realm was in need of a hero to solve its mysteries and restore balance. Luna offered to guide Alex through the forest, where they would encounter their first challenge: rescuing a group of trapped forest animals from a cunning sorcerer.As they ventured deeper into the forest, Alex and Luna faced numerous obstacles. They deciphered cryptic messages from the trees, solved intricate puzzles, and bravely confronted the sorcerer. With Luna’s help, Alex managed to outwit the sorcerer and free the animals, earning the gratitude of the forest’s inhabitants. The first quest was a success, and Alex felt a sense of accomplishment and newfound courage.")
                    .font(.title)
                    .padding(25)
            }
        }
        .padding()
    }
}

    // ... other chapter views ...`3`
