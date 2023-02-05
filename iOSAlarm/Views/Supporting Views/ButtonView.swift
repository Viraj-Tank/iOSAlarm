
import SwiftUI

struct ButtonView: View {
    
    let text: LocalizedStringKey
    var endRadius = 40.0
    var scaleX = 3.0
    
    var body: some View {
        Text(text)
            .foregroundColor(black)
            .fontWeight(.semibold)
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                MainGradient(
                    endRadius: endRadius,
                    scaleX: scaleX
                )
            )
            .cornerRadius(40)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ButtonView(text: "Add Alarm")
            ButtonView(text: "Next")
            ButtonView(text: "Create")
        }.padding()
    }
}
