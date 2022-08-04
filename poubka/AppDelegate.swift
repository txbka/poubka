//
//  AppDelegate.swift
//  poubka
//
//  Created by Tomasz Kikuła on 04/08/2022.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    
    let statusItem = NSStatusBar.system.statusItem(withLength:NSStatusItem.squareLength)
    var feed = 0

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if let button = statusItem.button {
            button.image = NSImage(named:NSImage.Name("bee-ico"))
        }
        constructMenu()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
    
    @objc func adobtBee(_ sender: NSMenuItem)
    {
        let url = URL(string: "https://adoptujpszczole.pl/")!
        NSWorkspace.shared.open(url)
    }
    
    func constructMenu()
    {
        let menu = NSMenu()
        
        menu.addItem(NSMenuItem(title: "Adopt Bee Bzzz!", action: #selector(AppDelegate.adobtBee(_:)), keyEquivalent: "a"))
        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title: "Quit Poubka", action: #selector(NSApplication.terminate(_:)),  keyEquivalent: "q"))
        
        statusItem.menu = menu
    }
}

