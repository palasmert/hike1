//
//  CardView.swift
//  Hike
//
//  Created by mert palas on 19.10.2023.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // card
        
        ZStack {
            CustomBackgroundView()
            
            VStack {
                //header
                
                VStack(alignment: .leading){
                    
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [
                                    .customGrayLight,
                                    .customGrayMedium],
                                               startPoint: .top,
                                               endPoint: .bottom)
                            )
                        Spacer()
                        Button {
                            //action
                            print("the button was pressed.")
                        } label: {
                           CustomButtonView()
                           
                        }
                    }
                        Text("Fun and enjoyable outdoor activity for friends  and family.")
                            .multilineTextAlignment(.leading)
                            .italic()
                            .foregroundColor(.customGrayMedium)
                        
                    }
                    .padding(.horizontal,30)
                    // main content
                    
                    ZStack {
                        Circle()
                            .fill(
                                LinearGradient(
                                    colors: [
                                        Color("ColorIndigoMedium"),
                                        Color("ColorSalmonLight")
                                    ],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                                
                        )
                        .frame(width: 256, height: 256)
                        
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                    //footer
                } // vstack
            }
            // card
            .frame(width: 320, height: 750)
        }
    }
    
    struct CardView_Previews:PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

