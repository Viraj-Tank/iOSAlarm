
import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var opacity = 0.3
    @State private var fontSize = 12.0
    
    var body: some View {
        if isActive {
            MainAlarmView()
        } else {
            ZStack {
                FourCoolCircles()
                
                VStack {
                    
                    VStack(alignment: .leading,spacing: 0) {
                        CoolTextView(
                            text: LocalizedStringKey("hello there!"), size: fontSize
                        )
                        
                        CoolTextView(
                            text: LocalizedStringKey("let's add an alarm"), size: fontSize
                        )
                    
                    }
                    .multilineTextAlignment(.leading)
                    .padding()
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.5)) {
                            opacity = 1.0
                            fontSize = 36.0
                        }
                    }
                    
                    Spacer()
                    
                    Image("welcome")
                        .resizable()
                        .scaledToFit()
                        .opacity(0.7)
                    
                    Spacer()
                    
                }
            }
            .opacity(opacity)
            .onAppear(perform: {
                // after two seconds on appearing zstack is active will be true with animation
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            })
            .onTapGesture {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
