//
//  PlaySound.swift
//  KSA
//
//  Created by Ruba Yahya on 01/10/2022.
//

import Foundation
import AVFoundation

var audioPlayer : AVAudioPlayer?

func playSound(soundFile : String, soundType : String){
    //To ensure the file exsist
    if let path = Bundle.main.path(forResource: soundFile, ofType: soundType){
        // init of audioPlayer
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Can't find the file =(")
        }
    }
}
