
import SwiftUI

@main
struct iOSAlarmApp: App {
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
//            AboutView()
        }
    }
}


/*
 
 - create good folder structure
 - add localizations language from project and add string into localizable according to our need
 - add required color in assets then create constant file and store those colors in let or enum
 - start working on UI part and make sure code is clean and readable
 - creating time and date support function
 - setup splash screen (first we're setting circles with animation)
 - then titles and splash screen ZStack onAppear navigation
 - asking for user permission
 - creating addEditAlarmView screen (creating view depth by depth)
 
 
 
 -> pexels.com
 -> undraw.co
 
 */
