//
//  ContentView.swift
//  SettingsPage
//
//  Created by Frédéric Helfer on 11/10/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isOnAirplane = false
    
    private var settings = ["Airplane Mode", "Wi-Fi", "Bluetooth", "Callular", "Personal Hotspot"]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    NavigationLink {
                        Text("Icloud Settings")
                    } label: {
                        HStack {
                            Image("eu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            
                            VStack {
                                Text("Frédéric Helfer")
                                    .font(.title2)
                                    .padding(.bottom, 1)
                                
                                
                                Text("Apple ID, Icloud+, Media & Purchases")
                                    .font(.caption)
                            }
                            .multilineTextAlignment(.leading)
                        }
                        .padding(.vertical, 6)
                    }
                }
                
                Section {
                    HStack {
                        Image(systemName: "airplane")
                            .frame(width: 33, height: 33)
                            .background(.orange)
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.trailing, 5)
                        
                        
                        Toggle("Airplane Mode", isOn: $isOnAirplane)
                    }
                    
                    NavigationLink {
                        Text("Wi-Fi")
                    } label: {
                        HStack {
                            Image(systemName: "wifi")
                                .frame(width: 33, height: 33)
                                .background(.blue)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .padding(.trailing, 5)
                            
                            Text("Wi-Fi")
                        }
                    }
                    
                    NavigationLink {
                        Text("Bluetooth")
                    } label: {
                        HStack {
                            Image(systemName: "bonjour")
                                .frame(width: 33, height: 33)
                                .background(.blue)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .padding(.trailing, 5)
                            
                            Text("Bluetooth")
                        }
                    }
                    
                    NavigationLink {
                        Text("Cellular")
                    } label: {
                        HStack {
                            Image(systemName: "antenna.radiowaves.left.and.right")
                                .frame(width: 33, height: 33)
                                .background(.green)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .padding(.trailing, 5)
                            
                            Text("Cellular")
                        }
                    }
                    
                    NavigationLink {
                        Text("Personal Hotspot")
                    } label: {
                        HStack {
                            Image(systemName: "personalhotspot")
                                .frame(width: 33, height: 33)
                                .background(.green)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .padding(.trailing, 5)
                            
                            Text("Personal Hotspot")
                        }
                    }
                }
                
                Section {
                    NavigationLink {
                        Text("Notifications")
                    } label: {
                        HStack {
                            Image(systemName: "bell.badge.fill")
                                .frame(width: 33, height: 33)
                                .background(.red)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .padding(.trailing, 5)
                            
                            Text("Notifications")
                        }
                    }
                    
                    NavigationLink {
                        Text("Sounds & Haptics")
                    } label: {
                        HStack {
                            Image(systemName: "speaker.wave.3.fill")
                                .frame(width: 33, height: 33)
                                .background(.red)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .padding(.trailing, 5)
                            
                            Text("Sounds & Haptics")
                        }
                    }
                    
                    NavigationLink {
                        Text("Focus")
                    } label: {
                        HStack {
                            Image(systemName: "moon.fill")
                                .frame(width: 33, height: 33)
                                .background(.purple)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .padding(.trailing, 5)
                            
                            Text("Focus")
                        }
                    }
                    
                    NavigationLink {
                        Text("Screen Time")
                    } label: {
                        HStack {
                            Image(systemName: "iphone.circle.fill")
                                .frame(width: 33, height: 33)
                                .background(.purple)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .padding(.trailing, 5)
                            
                            Text("Screen Time")
                        }
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
