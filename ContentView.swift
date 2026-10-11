
import SwiftUI

// Represents an item on the shopping list
struct ShoppingItem: Identifiable {
    let id = UUID()
    var name: String
    var category: String
    var isPurchased = false
}

struct ContentView: View {
    
    // Stores the user's input and shopping list
    @State private var itemName = ""
    @State private var selectedCategory = "Groceries"
    @State private var items: [ShoppingItem] = []
    
    // Available shopping categories
    let categories = [
        "Groceries",
        "Cleaning",
        "Bathroom",
        "Other"
    ]
    
    // Counts items that have not been purchased
    var remainingCount: Int {
        items.filter { !$0.isPurchased }.count
    }
    
    var purchasedCount: Int {
        items.filter { $0.isPurchased }.count
    }
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 16) {
                
                // App heading
                VStack(spacing: 6) {
                    Image(systemName: "house.fill")
                        .font(.system(size: 35))
                        .foregroundStyle(.green)
                    
                    Text("RoomEase")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("Household Shopping List")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                .padding(.top)
                
                // Add a new item
                HStack {
                    TextField(
                        "Enter an item",
                        text: $itemName
                    )
                    .textFieldStyle(.roundedBorder)
                    
                    Button {
                        addItem()
                    } label: {
                        Text("Add")
                            .bold()
                            .padding(.horizontal, 12)
                            .padding(.vertical, 8)
                            .background(.green)
                            .foregroundStyle(.white)
                            .clipShape(
                                RoundedRectangle(
                                    cornerRadius: 8
                                )
                            )
                    }
                    .disabled(
                        itemName.trimmingCharacters(
                            in: .whitespacesAndNewlines
                        ).isEmpty
                    )
                }
                
                // Choose a shopping category
                VStack(alignment: .leading, spacing: 8) {
                    Text("Select Category")
                        .font(.headline)
                    
                    Picker(
                        "Category",
                        selection: $selectedCategory
                    ) {
                        ForEach(categories, id: \.self) {
                            category in
                            Text(category)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                // Shopping progress
                HStack {
                    Label(
                        "\(remainingCount) Remaining",
                        systemImage: "cart"
                    )
                    
                    Spacer()
                    
                    Label(
                        "\(purchasedCount) Purchased",
                        systemImage: "checkmark.circle"
                    )
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .padding(.vertical, 8)
                
                // Shopping list
                if items.isEmpty {
                    Spacer()
                    
                    VStack(spacing: 12) {
                        Image(
                            systemName: "cart.badge.plus"
                        )
                        .font(.system(size: 45))
                        .foregroundStyle(.green)
                        
                        Text("Your list is empty!")
                            .font(.headline)
                        
                        Text(
                            "Add an item to get started."
                        )
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    }
                    
                    Spacer()
                } else {
                    List {
                        ForEach($items) { $item in {
                            Toggle(
                                isOn: $item.isPurchased
                            ) {
                                VStack(
                                    alignment: .leading,
                                    spacing: 4
                                ) {
                                    Text(item.name)
                                        .font(.headline)
                                        .strikethrough(
                                            item.isPurchased
                                        )
                                    
                                    Text(item.category)
                                        .font(.caption)
                                        .foregroundStyle(
                                            .secondary
                                        )
                                }
                            }
                            .tint(.green)
                        }()
                        }
                        .onDelete(
                            perform: deleteItems
                        )
                    }
                    .listStyle(.plain)
                }
                
            }
            .padding()
            .navigationTitle("Shopping List")
        }
    }
    
    // Adds a new shopping item
    func addItem() {
        let name = itemName.trimmingCharacters(
            in: .whitespacesAndNewlines
        )
        
        guard !name.isEmpty else {
            return
        }
        
        let newItem = ShoppingItem(
            name: name,
            category: selectedCategory
        )
        
        items.append(newItem)
        
        // Clear the text field
        itemName = ""
    }
    
    // Deletes an item from the list
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
