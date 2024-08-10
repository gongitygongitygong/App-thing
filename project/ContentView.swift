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
                Text("Chapter 1 content goes here...")
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
                Text("Chapter 2 content goes here...")
                    .font(.title)
                    .padding(25)
            }
        }
        .padding()
    }
}

    // ... other chapter views ...`3`
