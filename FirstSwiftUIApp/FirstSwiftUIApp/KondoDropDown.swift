//
//  KondoDropDown.swift
//  FirstSwiftUIApp
//
//  Created by Sumanth Gada on 25/09/24.
//

import Foundation
import SwiftUI

struct DropdownView: View {
    // List of items to display in the dropdown
    let items: [String]
    
    // State variables to manage the selected item and dropdown visibility
    @State private var selectedItem: String?
    @State private var isDropdownVisible: Bool = false

    var body: some View {
        VStack {
            HStack {
                Text(selectedItem ?? "Select an item")
                    .foregroundColor(selectedItem == nil ? .gray : .black)
                Image(systemName: "arrowtriangle.down.fill") // Using SF Symbols for the arrow image
                    .rotationEffect(.degrees(isDropdownVisible ? 180 : 0))
                    .animation(.easeInOut, value: isDropdownVisible)
                .popover(isPresented: $isDropdownVisible) {
                    List { // Dropdown content
                        ForEach(items, id: \.self) { item in
                            Button(action: {
                                selectedItem = item // Set selected item and hide dropdown
                                isDropdownVisible = false
                            }) {
                                GeometryReader { geometry in
                                    Text(item)
                                        .font(.system(size: 18)) // Increase font size
                                        .frame(maxWidth: .infinity, alignment: .center) // Center text and fill width
                                        .padding(0) // Add padding around the text
                                        .background(Color.white) // Background color for each item
                                        .multilineTextAlignment(.center)
                                }
                                .frame(height: 24)
                                .frame(maxWidth: .infinity, alignment: .center) // Center text and fill width
                                .padding() // Add padding around the text
                            }
                            .buttonStyle(PlainButtonStyle()) // Remove default button styling
                        }
                    }
                    .listStyle(PlainListStyle()) // Use plain list style
                    .padding() // No padding around the list
                    //.frame(maxWidth: 200) // Fixed width for the popover
                    .frame(width: 360) // Fixed width for the popover
                    .frame(height: CGFloat(items.count * 84)) // Height based on items, 44 is the default height for a list row
                    .background(Color.white) // Background color for the popover
                    .cornerRadius(8) // Rounded corners
                    .onAppear {
                        // Remove lines under the last item
                        UITableView.appearance().separatorStyle = .none
                    }
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(8)
            //.shadow(radius: 3)
            .onTapGesture {
                // Toggle the dropdown visibility
                isDropdownVisible.toggle()
            }
        }
        .padding()
    }
}

// Preview for the DropdownView
struct DropdownView_Previews: PreviewProvider {
    static var previews: some View {
        DropdownView(items: ["Lists", "Filters", "Advanced Filters"])
            .previewLayout(.sizeThatFits)
    }
}
