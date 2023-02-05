
import SwiftUI

struct AddEditAlarmView: View {
    
    //we're setting currentAlarmIndex as nil because for new alarm there are no previous index (like for update)
    let currentAlarmIndex: Int?
    @State var alarmModel: AlarmModel
    @State private var showYouDidItView = true
    
    var body: some View {
        ZStack {
            backgroundColor
                .opacity(0.7)
                .ignoresSafeArea()
            
            VStack {
                if(showYouDidItView) {
                    YouDidItView()
                }
                
                ToBedWakeUpView(currentAlarmIndex: currentAlarmIndex, alarmModel: alarmModel)
                
            }
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                withAnimation {
                    showYouDidItView = false
                }
            }
        }
    }
}

struct AddEditAlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AddEditAlarmView(
            currentAlarmIndex: nil,
            alarmModel: .DefaultAlarm()
        )
    }
}
