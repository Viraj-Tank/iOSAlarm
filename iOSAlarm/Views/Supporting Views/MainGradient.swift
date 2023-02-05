
import SwiftUI

struct MainGradient: View {
    
    var startRadius: CGFloat = 0.0
    let endRadius: CGFloat
    var scaleX: CGFloat = 2.0
    var opacityLinearGrad = 0.5
    var opacityRadialGrad = 1.0
    var yellowColor = yellow
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [blue, purple, pink],
                startPoint: .top,
                endPoint: .bottom
            )
            .opacity(opacityLinearGrad)
            
            RadialGradient(
                colors: [yellowColor, .clear],
                center: .bottom,
                startRadius: startRadius,
                endRadius: endRadius
            )
            .opacity(opacityLinearGrad)
            .scaleEffect(x: scaleX)//change this and check output
            
        }
    }
}

struct MainGradient_Previews: PreviewProvider {
    static var previews: some View {
        MainGradient(endRadius: 75)
            .frame(width: screenWidth, height: screenHeight)
    }
}
