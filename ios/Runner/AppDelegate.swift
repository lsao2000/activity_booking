import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)


                   // android:value="AIzaSyCuTilAfnGfkZtIx0T3qfeOmWZ_N2LpoY"/>
                       // TODO: Add your Google Maps API key
    // GMSServices.provideAPIKey("AIzaSyCuTilAfnGfkZtIx0T3qfeOmWZ_N2LpoY")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
