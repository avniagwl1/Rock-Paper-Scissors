//
//  ContentView.swift
//  Shared
//
//  Created by Avni Agarwal on 7/9/22.
//

import SwiftUI

struct ContentView: View {
    @State var score = 0
    @State var feedback = "click on a buttom to get started!"
    @State var otherplayer = "all"
    @State var choices = ["rock","paper","scissors"]
    var body: some View {
        VStack {
    Text("Rock, Paper, Scissors")
    .font(.custom("NoteWorthy-Bold", size:30))
            Text("score :  \(score)")
    .font(.custom("NoteWorthy-Bold", size:25))
            
      Image(otherplayer)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .padding()
    Text(" \(feedback)")
      .font(.custom("NoteWorthy-Bold", size:25))
                    
         
            HStack {
        Button(action: {winner(pressed:"rock")}) {
     Image("rock")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .padding()
                }
    Button(action: {winner(pressed:"paper")}) {
     Image("paper")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .padding()
                            }
        Button(action: {winner(pressed:"scissors")}) {
     Image("scissors")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .padding()
                            }
            }
            
        }
        
    }
 func winner(pressed : String) {
     otherplayer = choices.randomElement()!
     
  if pressed == "rock" {
      if otherplayer == "rock" {
          feedback = "it's a tie!"      }
      if otherplayer == "paper" {
          feedback = "you lost!"
      }
      if otherplayer == "scissors" {
          feedback = "you won!"
          score += 1
        }
     }
     if pressed == "scissors" {
         if otherplayer == "rock" {
             feedback = "you lost!"  }
         if otherplayer == "paper" {
             feedback = "you won!"
             score += 1
         }
         if otherplayer == "scissors" {
             feedback = "it's a tie!"
             
           }
     }
     if pressed ==  "paper" {
         if otherplayer == "rock" {
             feedback = "you won"
             score += 1
         }
         if otherplayer == "paper" {
             feedback = "it's a tie!"
             
         }
         if otherplayer == "scissors" {
             feedback = "you lost!"
             
           }
     }
 }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
