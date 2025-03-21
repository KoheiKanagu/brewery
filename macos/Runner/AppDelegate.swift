import Cocoa
import FlutterMacOS

@main
class AppDelegate: FlutterAppDelegate {

    var statusBar: StatusBarController?
    var popover = NSPopover.init()

    override init() {
        popover.behavior = NSPopover.Behavior.transient
    }

    override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return false
    }

    override func applicationDidFinishLaunching(_ aNotification: Notification) {
        let controller: FlutterViewController = mainFlutterWindow?.contentViewController as! FlutterViewController
        popover.contentSize = NSSize(width: 582.48, height: 360)
        popover.contentViewController = controller

        statusBar = StatusBarController.init(popover)

        mainFlutterWindow.close()

        super.applicationDidFinishLaunching(aNotification)
    }
}
