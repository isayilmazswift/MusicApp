//
//  Listen.swift
//  musicApp
//
//  Created by İsa Yılmaz on 1/16/21.
//

import SwiftUI

struct PlayingNow: View {
    @State private var sound: Double = 10
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.pink)
                        .frame(width: 50, height: 5, alignment: .center)
                    
                }
                .padding(.top)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.black.opacity(0.1))
                        .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.35, alignment: .center)
                    
                        .padding(.vertical, 100)
                    
                    Image("billie")
                        .scaledToFit()
                        .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.35, alignment: .center)
                        .clipShape(RoundedRectangle(cornerRadius: 10.0))
                }
                
                VStack{
                    
                    HStack{
                        Button(action: {
                            
                        }, label: {
                            Text("Billie Elish")
                                .font(.title)
                                .foregroundColor(.pink)
                                .fontWeight(.medium)
                        })
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "ellipsis")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20, alignment: .center)
                                .foregroundColor(.pink)
                        })
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.8, alignment: .leading)
                    
                    HStack{
                        Button(action: {
                            
                        }, label: {
                            Text("Bad Guy")
                                .foregroundColor(.pink)
                                .font(.title3)
                                .fontWeight(.regular)
                                .frame(width: UIScreen.main.bounds.width * 0.8, alignment: .leading)
                        })
                    }
                    
                    
                    VStack{
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.pink)
                            .frame(width: UIScreen.main.bounds.width * 0.8, height: 5, alignment: .center)
                        
                        HStack{
                            Text("00:00")
                                .foregroundColor(.pink)
                                .font(.callout)
                            Spacer()
                            
                            Text("09:41")
                                .foregroundColor(.pink)
                                .font(.callout)
                            
                        }.frame(width: UIScreen.main.bounds.width * 0.8, alignment: .center)
                    }
                    
                    
                    HStack(alignment: .center, spacing: 20){
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "backward.fill")
                                .resizable()
                                .foregroundColor(.pink)
                                .scaledToFit()
                                .frame(width: 35, height: 35, alignment: .center)
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "gobackward.15")
                                .resizable()
                                .foregroundColor(.pink)
                                .scaledToFit()
                                .frame(width: 35, height: 35, alignment: .center)
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "play.fill")
                                .resizable()
                                .foregroundColor(.pink)
                                .scaledToFit()
                                .frame(width: 35, height: 35, alignment: .center)
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "goforward.15")
                                .resizable()
                                .foregroundColor(.pink)
                                .scaledToFit()
                                .frame(width: 35, height: 35, alignment: .center)
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "forward.fill")
                                .resizable()
                                .foregroundColor(.pink)
                                .scaledToFit()
                                .frame(width: 35, height: 35, alignment: .center)
                        })
                        
                        
                        
                    }
                    
                    
                    
                    
                    VStack {
                                Slider(value: $sound, in: 0...10, step: 0.05)
                                    .accentColor(.pink)
                                
                            }
                    
                    
                    HStack(alignment: .center, spacing: 100){
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "shuffle")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.pink)
                                .frame(width: 30, height: 30, alignment: .center)
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "airplayaudio")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.pink)
                                .frame(width: 30, height: 30, alignment: .center)
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "list.bullet")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(.pink)
                                .frame(width: 30, height: 30, alignment: .center)
                        })
                        
                        
                    }
                    
                    .padding(.top)
                    
                    
                }
                .frame(width: UIScreen.main.bounds.width * 0.8, alignment: .center)
                
                
                HStack{
                    
                }.frame(width: UIScreen.main.bounds.width * 0.8, alignment: .center)
                
                Spacer()
            }
            .background(Color.white)
        }
        
    }
}

struct Listen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayingNow().previewDevice("iPhone 11")
            PlayingNow().previewDevice("iPhone 12 Pro Max")
        }
    }
}
