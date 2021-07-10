//
//  AboutEvents.swift
//  SwiftUI Basics
//
//  Created by Rodrigo Yukio Okido on 09/07/21.
//

import SwiftUI
import UniformTypeIdentifiers

struct AboutEventsSection: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    Text("Lets check a simple onDrag and onDrop example.")
                        .font(.headline)
                    
                    FoodDropPlaceView(foods: list) { foodId in
                        print(foodId)
                    }

                    Text("Drag any food item below to the empty square above. To switch, just drag a new one inside the square.")
                        .font(.subheadline)

                        
                    Spacer()
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach (list, id: \.self) {food in
                                food
                            }
                            .border(Color.white)
                        }
                        .padding()
                    }
                }
                
                VStack {
                    Text("You can check how this example was implemented on the button below:")
                        .font(.subheadline)


                    Link(
                        destination: URL(string: "https://github.com/RodrigoOkido/SwiftUI-Basics/blob/main/SwiftUI%20Basics/Sections/AboutEventsSection.swift")!,
                        label: {
                            Text("Click Here")
                        })
                        .padding()
                        .foregroundColor(.white)
                        .background(Color(.systemBlue))
                        .cornerRadius(15)
                }
            }
            .padding()
            .navigationTitle("Event")
        }
    }
}


/**
 Struct to represent a food. The struct contains an modifier called .onDrag, which give us
 the possibility to drag this object on the View.
 */
struct DraggableFood: View, Hashable {
    // Image(uiImage: #imageLiteral(resourceName: "Photo.png"))
    let foodId: String
    let imageFood: UIImage
    
    var body: some View {
        Image(uiImage: imageFood)
            .resizable()
            .frame(width: 80, height: 80)
            .onDrag { return NSItemProvider(object: foodId as NSString) }
    }
}


struct FoodDropPlaceView: View {
    @State var foodId: String = ""
    var foods: [DraggableFood]
    var onDropFoodId: (String) -> Void
    
    func getActivityFoodImage() -> UIImage {
        for food in foods {
            if(food.foodId == self.foodId) {
                return food.imageFood
            }
        }
        
        return UIImage()
    }
    
    var body: some View{
        let w = Image(uiImage: getActivityFoodImage())
            .resizable()
            .frame(width: 80, height: 80)
        
        return Rectangle()
            .fill(Color.gray)
            .frame(width: 80, height: 80)
            .cornerRadius(10)
            .overlay(w)
            .onDrop(of: [UTType.plainText], isTargeted: .constant(true)) { providers in
                guard let foodIdProvider = providers.first else {
                    return false
                }
                
                
                foodIdProvider.loadItem(forTypeIdentifier: UTType.plainText.description) { (foodIdDataAsSecureCoding, error) in
                    guard let foodIdData = foodIdDataAsSecureCoding as? Data,
                          let foodId = String(data: foodIdData, encoding: .utf8) else {
                        return
                    }
                    
                    self.foodId = foodId
                    self.onDropFoodId(foodId)
                }
                
                return true
            }
    }
}


// Creating Draggable food items. This can make you make the drag gesture on the screen.
var food1: DraggableFood = DraggableFood(foodId: "Asparagus" ,imageFood:#imageLiteral(resourceName: "asparagus.png"))
var food2: DraggableFood = DraggableFood(foodId: "Avocado" ,imageFood:#imageLiteral(resourceName: "avocado.png"))
var food3: DraggableFood = DraggableFood(foodId: "Beer" ,imageFood:#imageLiteral(resourceName: "beer.png"))
var food4: DraggableFood = DraggableFood(foodId: "Coffee" ,imageFood:#imageLiteral(resourceName: "coffee.png"))
var food5: DraggableFood = DraggableFood(foodId: "Egg" ,imageFood:#imageLiteral(resourceName: "egg.png"))
var food6: DraggableFood = DraggableFood(foodId: "Salmon" ,imageFood:#imageLiteral(resourceName: "salmon.png"))

// Add all DraggableFood to a list.
var list: [DraggableFood] = [food1, food2, food3, food4, food5, food6]





struct AboutEvents_Previews: PreviewProvider {
    static var previews: some View {
        AboutEventsSection()
    }
}
