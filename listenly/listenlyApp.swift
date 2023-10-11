import SwiftUI

@main
struct YourAppName: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(minWidth: 200, minHeight: 200)
                .background(WindowBackground())
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}

struct WindowBackground: NSViewRepresentable {
    func makeNSView(context: Context) -> NSView {
        return NSView()
    }
    
    func updateNSView(_ nsView: NSView, context: Context) {
        nsView.wantsLayer = true
        nsView.layer?.backgroundColor = NSColor.black.cgColor
    }
}
