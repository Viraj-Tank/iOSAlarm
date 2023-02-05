
import SwiftUI

struct SelectActivityView: View {
    
    @Binding var currentColorIndex: Int
    @Binding var currentActivity: String
    var currentColor: Color {
        mainColors[currentColorIndex]
    }
    var nextIndex: Int { //so it doesnt go out of bounds
        (currentColorIndex + 1) % mainColors.count
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SelectActivityView_Previews: PreviewProvider {
    static var previews: some View {
        SelectActivityView(
            currentColorIndex: .constant(0),
            currentActivity: .constant(activities[0])
        ).padding(.horizontal)
    }
}
