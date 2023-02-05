
import SwiftUI

struct AlarmToggleView: View {
    
    @Binding var alarmEnabled: Bool
    
    var body: some View {
        HStack {
            GrayedTextView(text: "alarm")
            Spacer()
            TheToggleView(isOn: $alarmEnabled)
        }.padding()
    }
}

struct AlarmToggleView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmToggleView(alarmEnabled: .constant(true))
    }
}
