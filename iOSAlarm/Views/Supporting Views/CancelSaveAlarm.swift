
import SwiftUI

struct CancelSaveAlarm: View {
    
    let currentAlarmIndex: Int?
    @Binding var alarmModel: AlarmModel
    
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Text("Cancel")
            })
            Spacer()
            Button(action: {
                if let currentAlarmIndex = currentAlarmIndex {
                    /// edit alarm to view model
                } else {
                    /// add/append alarm to view model
                }
            }, label: {
                Text("Save")
            })
        }
    }
}
    
struct CancelSaveAlarm_Previews: PreviewProvider {
    static var previews: some View {
        CancelSaveAlarm(
            currentAlarmIndex: nil,
            alarmModel: .constant(AlarmModel.DefaultAlarm())
        )
    }
}
