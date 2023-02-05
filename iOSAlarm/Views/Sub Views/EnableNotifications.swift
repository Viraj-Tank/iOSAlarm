
import SwiftUI

struct EnableNotifications: View {
    var body: some View {
        ZStack {
            FourCoolCircles()
            VStack {
                Spacer()
                CoolTextView(
                    text: LocalizedStringKey("Enable Notifications"),
                    size: 48
                ).multilineTextAlignment(.center)
                Spacer()
                Button(action: {
                    // TODO: enable notifications
                }, label: {
                    ButtonView(text: "Enable")
                        .padding()
                })
            }
        }
    }
}

struct EnableNotifications_Previews: PreviewProvider {
    static var previews: some View {
        EnableNotifications()
    }
}
