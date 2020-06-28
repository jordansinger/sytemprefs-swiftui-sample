//
//  ContentView.swift
//  System Preferences
//
//  Created by Jordan Singer on 6/28/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                User(name: "Jordan Singer")
                Spacer()
                Setting(title: "Family Sharing", icon: "person.3.fill")
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            
            Divider().background(Color(NSColor.separatorColor))
            
            VStack(spacing: 16) {
                HStack(alignment: .top) {
                    Spacer()
                    Group {
                        Setting(title: "General", icon: "menubar.dock.rectangle", color: NSColor.systemGreen)
                        Spacer()
                        Setting(title: "Desktop & Screen Saver", icon: "desktopcomputer", color: NSColor.systemBlue)
                        Spacer()
                        Setting(title: "Dock & Menu Bar", icon: "dock.rectangle")
                        Spacer()
                        Setting(title: "Mission Control", icon: "macwindow.on.rectangle", color: NSColor.systemPurple)
                    }
                    Spacer()
                }
                
                HStack(alignment: .top) {
                    Spacer()
                    Group {
                        Setting(title: "Touch ID", icon: "touchid", color: NSColor.systemPink)
                        Spacer()
                        Setting(title: "Users & Groups", icon: "person.2.fill")
                        Spacer()
                        Setting(title: "Wallet", icon: "creditcard", color: NSColor.systemOrange)
                        Spacer()
                        Setting(title: "Notifs", icon: "bell.fill", color: NSColor.systemPink)
                    }
                    Spacer()
                }
            }
            .padding(.vertical, 24)
            .background(Color(NSColor.windowBackgroundColor))
            
            Divider().background(Color(NSColor.separatorColor))
            
            VStack(spacing: 16) {
                HStack {
                    Spacer()
                    Group {
                        Setting(title: "Update", icon: "gear")
                        Spacer()
                        Setting(title: "Network", icon: "network", color: NSColor.systemBlue)
                        Spacer()
                        Setting(title: "Sound", icon: "speaker.wave.2.fill")
                        Spacer()
                        Setting(title: "Battery", icon: "battery.100", color: NSColor.systemGreen)
                    }
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Group {
                        Setting(title: "Keyboard", icon: "keyboard")
                        Spacer()
                        Setting(title: "Printer", icon: "printer.fill")
                        Spacer()
                        Setting(title: "Displays", icon: "display", color: NSColor.systemBlue)
                        Spacer()
                        Setting(title: "Date & Time", icon: "calendar.badge.clock", color: NSColor.systemRed)
                    }
                    Spacer()
                }
            }
            .padding(.vertical, 24)
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationTitle("System Preferences")
        .toolbar {
            ToolbarItem(placement: .navigation) {
                Button(action: { }) {
                    Image(systemName: "chevron.left")
                }
            }
            
            ToolbarItem(placement: .navigation) {
                Button(action: { }) {
                    Image(systemName: "chevron.right")
                }
            }
            
            ToolbarItem(placement: .navigation) {
                Button(action: { }) {
                    Image(systemName: "square.grid.4x3.fill")
                }
            }
            
            ToolbarItem(placement: .status) {
                Button(action: { }) {
                    Image(systemName: "magnifyingglass")
                }
            }
        }
    }
}

struct User: View {
    @State var name: String
    
    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: "person.crop.circle.fill")
                .font(.system(size: 64))
                .foregroundColor(Color(NSColor.systemGray))
            
            VStack(alignment: .leading, spacing: 2) {
                Text(name).font(.title2)
                Text("Apple ID, iCloud, Media & App Store").font(.subheadline)
            }
        }
    }
}

struct Setting: View {
    @State var title: String
    @State var icon: String
    @State var color: NSColor = NSColor.darkGray
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.system(size: 32))
                .foregroundColor(Color(color))
            
            Text(title)
                .font(.system(.callout))
                .foregroundColor(Color(NSColor.gray))
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .lineLimit(2)
        }
        .frame(width: 64)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
