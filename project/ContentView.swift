import SwiftUI

// Home View
struct HomeView: View {
    var body: some View {
        VStack {
            Text("Home")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("Welcome to DreamQuest")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.title3)
            
            Button(action: {
                print("Quizzes")
            }) {
                HStack {
                    Text("Quizzes")
                    Spacer()
                    Image(systemName: "square.and.pencil")
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .font(.largeTitle)
                .fontWeight(.medium)
                .background(Color.blue)
                .cornerRadius(20)
                .foregroundColor(.white)
            }
            
            Button(action: {
                print("Points")
            }) {
                HStack {
                    Text("Points")
                    Spacer()
                    ZStack {
                        Image(systemName: "circle")
                        Text("$")
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .font(.largeTitle)
                .fontWeight(.medium)
                .background(Color.blue)
                .cornerRadius(20)
                .foregroundColor(.white)
            }
            
            Button(action: {
                print("Store")
            }) {
                HStack {
                    Text("Store")
                    Spacer()
                    Image(systemName: "storefront")
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .font(.largeTitle)
                .fontWeight(.medium)
                .background(Color.blue)
                .cornerRadius(20)
                .foregroundColor(.white)
            }
            
            Button(action: {
                print("Account")
            }) {
                HStack {
                    Text("Account")
                    Spacer()
                    Image(systemName: "person.crop.circle")
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .font(.largeTitle)
                .fontWeight(.medium)
                .background(Color.blue)
                .cornerRadius(20)
                .foregroundColor(.white)
            }
        }
        .padding()
    }
}

// Book A Chapter 1
struct BookAChapter1: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Chapter 1: The Magical Book")
                    .font(.largeTitle .bold())
                Image(systemName: "book")
                    .font(.system(size: 110))
                Text("Alex was a curious child, always exploring and searching for hidden treasures in their small town. One rainy afternoon, while rummaging through the dusty attic of their house, Alex stumbled upon an old, leather-bound book. The cover was adorned with intricate patterns and a golden lock, but to Alex’s surprise, it opened easily. Inside, the pages were filled with strange symbols and beautiful illustrations of fantastical creatures and landscapes.As Alex turned the pages, a soft glow began to emanate from the book. Suddenly, a burst of light enveloped Alex, and in an instant, they found themselves standing in a lush, green forest. Startled but excited, Alex realized the book had transported them to a new world. This was the beginning of their incredible journey in DreamQuest.")
                    .font(.title)
                    .padding(25)
            }
        }
        .padding()
    }
}

// Book A Chapter 2
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

// Book A Chapter 3
struct BookAChapter3: View {
    var body: some View {
        Text("Book A Chapter 3")
    }
}

// Book A Chapter 4
struct BookAChapter4: View {
    var body: some View {
        Text("Book A Chapter 4")
    }
}

// Store Page
struct StoreView: View {
    @State private var points = 1000
    @State private var showAlert2a = false
    @State private var showAlert2b = false
    @State private var showAlert3a = false
    @State private var showAlert3b = false
    @State private var showAlert4a = false
    @State private var showAlert4b = false
    @State private var lock = false
    @State private var AChap2Status1 = false
    @State private var AChap2Status2 = false
    @State private var AChap3Status1 = false
    @State private var AChap3Status2 = false
    @State private var AChap4Status1 = false
    @State private var AChap4Status2 = false
    
    let AChap2 = 50
    let AChap3 = 75
    let AChap4 = 100
    let yes = "You have enough points for this!"
    let no = "You do not have enough points for this..."

    var body: some View {
        NavigationStack {
            List {
                // Book A Chapter 2
                VStack {
                    Text("Book A Chapter 2")
                        .font(.title)
                    ZStack {
                        Image(systemName: "book")
                            .resizable()
                            .scaledToFit()
                        HStack {
                            Spacer()
                            VStack {
                                Text("\(AChap2)")
                                    .font(.largeTitle)
                                Text("Points")
                                    .font(.largeTitle)
                            }
                            Spacer()
                            if AChap2Status2 == false {
                                Image(systemName: "lock")
                                    .font(.largeTitle)
                            } else {
                                Image(systemName: "lock.open")
                                    .font(.largeTitle)
                            }
                            Spacer()
                        }
                    }
                    if points >= AChap2 {
                        Text("Buy")
                            .foregroundStyle(.black)
                            .bold()
                            .font(.title)
                            .onTapGesture {
                                showAlert2a = true
                            }
                            .alert(yes, isPresented: $showAlert2a) {
                                Button("Yes") {
                                    points -= AChap2
                                    AChap2Status1 = true
                                    AChap2Status2 = true
                                }
                                Button("No") {}
                            } message: {
                                Text("Confirm your purchase")
                            }
                            .alert(no, isPresented: $showAlert2b) {
                                Button("Awww ok") {}
                            } message: {
                                Text("Earn more points to buy")
                            }
                        if AChap2Status1 {
                            NavigationLink("Read Book A Chapter 2 now!") {
                                BookAChapter2()
                            }
                        }
                    } else {
                        Text("Buy")
                            .foregroundStyle(.gray)
                            .bold()
                            .font(.title)
                            .onTapGesture {
                                showAlert2b = true
                            }
                            .alert(yes, isPresented: $showAlert2a) {
                                Button("Yes") {
                                    points -= AChap2
                                    AChap2Status1 = true
                                    AChap2Status2 = true
                                }
                                Button("No") {}
                            } message: {
                                Text("Confirm your purchase")
                            }
                            .alert(no, isPresented: $showAlert2b) {
                                Button("Awww ok") {}
                            } message: {
                                Text("Earn more points to buy")
                            }
                        if AChap2Status1 {
                            NavigationLink("Read Book A Chapter 2 now!") {
                                BookAChapter2()
                            }
                        }
                    }
                }
                
                Section {
                    // Book A Chapter 3
                    VStack {
                        Text("Book A Chapter 3")
                            .font(.title)
                        ZStack {
                            Image(systemName: "book")
                                .resizable()
                                .scaledToFit()
                            HStack {
                                Spacer()
                                VStack {
                                    Text("\(AChap3)")
                                        .font(.largeTitle)
                                    Text("Points")
                                        .font(.largeTitle)
                                }
                                Spacer()
                                if AChap3Status2 == false {
                                    Image(systemName: "lock")
                                        .font(.largeTitle)
                                } else {
                                    Image(systemName: "lock.open")
                                        .font(.largeTitle)
                                }
                                Spacer()
                            }
                        }
                        if points >= AChap3 {
                            Text("Buy")
                                .foregroundStyle(.black)
                                .bold()
                                .font(.title)
                                .onTapGesture {
                                    showAlert3a = true
                                }
                                .alert(yes, isPresented: $showAlert3a) {
                                    Button("Yes") {
                                        points -= AChap3
                                        AChap3Status1 = true
                                        AChap3Status2 = true
                                    }
                                    Button("No") {}
                                } message: {
                                    Text("Confirm your purchase")
                                }
                                .alert(no, isPresented: $showAlert3b) {
                                    Button("Awww ok") {}
                                } message: {
                                    Text("Earn more points to buy")
                                }
                            if AChap3Status1 {
                                NavigationLink("Read Book A Chapter 3 now!") {
                                    BookAChapter3()
                                }
                            }
                        } else {
                            Text("Buy")
                                .foregroundStyle(.gray)
                                .bold()
                                .font(.title)
                                .onTapGesture {
                                    showAlert3b = true
                                }
                                .alert(yes, isPresented: $showAlert3a) {
                                    Button("Yes") {
                                        points -= AChap3
                                        AChap3Status1 = true
                                        AChap3Status2 = true
                                    }
                                    Button("No") {}
                                } message: {
                                    Text("Confirm your purchase")
                                }
                                .alert(no, isPresented: $showAlert3b) {
                                    Button("Awww ok") {}
                                } message: {
                                    Text("Earn more points to buy")
                                }
                            if AChap3Status1 {
                                NavigationLink("Read Book A Chapter 3 now!") {
                                    BookAChapter3()
                                }
                            }
                        }
                    }
                }
                
                Section {
                    // Book A Chapter 4
                    VStack {
                        Text("Book A Chapter 4")
                            .font(.title)
                        ZStack {
                            Image(systemName: "book")
                                .resizable()
                                .scaledToFit()
                            HStack {
                                Spacer()
                                VStack {
                                    Text("\(AChap4)")
                                        .font(.largeTitle)
                                    Text("Points")
                                        .font(.largeTitle)
                                }
                                Spacer()
                                if AChap4Status2 == false {
                                    Image(systemName: "lock")
                                        .font(.largeTitle)
                                } else {
                                    Image(systemName: "lock.open")
                                        .font(.largeTitle)
                                }
                                Spacer()
                            }
                        }
                        if points >= AChap4 {
                            Text("Buy")
                                .foregroundStyle(.black)
                                .bold()
                                .font(.title)
                                .onTapGesture {
                                    showAlert4a = true
                                }
                                .alert(yes, isPresented: $showAlert4a) {
                                    Button("Yes") {
                                        points -= AChap4
                                        AChap4Status1 = true
                                        AChap4Status2 = true
                                    }
                                    Button("No") {}
                                } message: {
                                    Text("Confirm your purchase")
                                }
                                .alert(no, isPresented: $showAlert4b) {
                                    Button("Awww ok") {}
                                } message: {
                                    Text("Earn more points to buy")
                                }
                            if AChap4Status1 {
                                NavigationLink("Read Book A Chapter 4 now!") {
                                    BookAChapter4()
                                }
                            }
                        } else {
                            Text("Buy")
                                .foregroundStyle(.gray)
                                .bold()
                                .font(.title)
                                .onTapGesture {
                                    showAlert4b = true
                                }
                                .alert(yes, isPresented: $showAlert4a) {
                                    Button("Yes") {
                                        points -= AChap4
                                        AChap4Status1 = true
                                        AChap4Status2 = true
                                    }
                                    Button("No") {}
                                } message: {
                                    Text("Confirm your purchase")
                                }
                                .alert(no, isPresented: $showAlert4b) {
                                    Button("Awww ok") {}
                                } message: {
                                    Text("Earn more points to buy")
                                }
                            if AChap4Status1 {
                                NavigationLink("Read Book A Chapter 4 now!") {
                                    BookAChapter4()
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Points")
            .toolbar {
                HStack {
                    Text("\(points)")
                    Image(systemName: "bitcoinsign.circle.fill")
                }
            }
        }
    }
}

// Points View After Question
struct PointViewAfterQuestion: View {
    @State private var points = 10
    @State private var showAlert2a = false
    @State private var showAlert2b = false
    @State private var showAlert3a = false
    @State private var showAlert3b = false
    @State private var showAlert4a = false
    @State private var showAlert4b = false
    @State private var lock = false
    @State private var AChap2Status1 = false
    @State private var AChap2Status2 = false
    @State private var AChap3Status1 = false
    @State private var AChap3Status2 = false
    @State private var AChap4Status1 = false
    @State private var AChap4Status2 = false
    
    let AChap2 = 50
    let AChap3 = 75
    let AChap4 = 100
    let yes = "You have enough points to unlock:"
    let no = "You do not have enough points to unlock..."
    
    var body: some View {
        NavigationStack {
            List {
                Text("You have \(points) points")
                    .font(.title)
                
                if points >= AChap2 {
                    Text("\(yes)")
                        .font(.title)
                } else {
                    Text("\(no)")
                        .font(.title)
                }
                
                Section {
                    VStack {
                        Text("Book A Chapter 2")
                            .font(.title)
                        ZStack {
                            Image(systemName: "book")
                                .resizable()
                                .scaledToFit()
                            HStack {
                                Spacer()
                                VStack {
                                    Text("\(AChap2)")
                                        .font(.largeTitle)
                                    Text("Points")
                                        .font(.largeTitle)
                                }
                                Spacer()
                                if AChap2Status2 == false {
                                    Image(systemName: "lock")
                                        .font(.largeTitle)
                                } else {
                                    Image(systemName: "lock.open")
                                        .font(.largeTitle)
                                }
                                Spacer()
                            }
                        }
                        
                        if points >= AChap2 {
                            Text("Buy")
                                .foregroundStyle(.black)
                                .bold()
                                .font(.title)
                                .onTapGesture {
                                    showAlert2a = true
                                }
                                .alert(yes, isPresented: $showAlert2a) {
                                    Button("Yes") {
                                        points -= AChap2
                                        AChap2Status1 = true
                                        AChap2Status2 = true
                                    }
                                    Button("No") {}
                                } message: {
                                    Text("Confirm your purchase")
                                }
                                .alert(no, isPresented: $showAlert2b) {
                                    Button("Awww ok") {}
                                } message: {
                                    Text("Earn more points to buy")
                                }
                            if AChap2Status1 {
                                NavigationLink("Read Book A Chapter 2 now!") {
                                    BookAChapter2()
                                }
                            }
                        } else {
                            Text("Buy")
                                .foregroundStyle(.gray)
                                .bold()
                                .font(.title)
                                .onTapGesture {
                                    showAlert2b = true
                                }
                                .alert(yes, isPresented: $showAlert2a) {
                                    Button("Yes") {
                                        points -= AChap2
                                        AChap2Status1 = true
                                        AChap2Status2 = true
                                    }
                                    Button("No") {}
                                } message: {
                                    Text("Confirm your purchase")
                                }
                                .alert(no, isPresented: $showAlert2b) {
                                    Button("Awww ok") {}
                                } message: {
                                    Text("Earn more points to buy")
                                }
                            if AChap2Status1 {
                                NavigationLink("Read Book A Chapter 2 now!") {
                                    BookAChapter2()
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Unlock")
        }
    }
}

// Main App Entry Point
@main
struct DreamQuestApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}

// Preview Providers
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct BookAChapter1_Previews: PreviewProvider {
    static var previews: some View {
        BookAChapter1()
    }
}

struct BookAChapter2_Previews: PreviewProvider {
    static var previews: some View {
        BookAChapter2()
    }
}

struct BookAChapter3_Previews: PreviewProvider {
    static var previews: some View {
        BookAChapter3()
    }
}

struct BookAChapter4_Previews: PreviewProvider {
    static var previews: some View {
        BookAChapter4()
    }
}

struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
    }
}

struct PointViewAfterQuestion_Previews: PreviewProvider {
    static var previews: some View {
        PointViewAfterQuestion()
    }
}
