//
//  ViewController.swift
//  XylopApp
//
//  Created by Kadir Hocaoğlu on 21.07.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var player: AVAudioPlayer?

    func playSound(_ soundName: String) {
        guard let url = Bundle.main.url(forResource: soundName, withExtension: "wav") else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)

            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

            /* iOS 10 and earlier require the following line:
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */

            guard let player = player else { return }

            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }

    @IBAction func keyPressedC(_ sender: UIButton)
    {
      playSound("C")
    }
    @IBAction func keyPressedD(_ sender: UIButton)
    {
        playSound("D")

    }
    @IBAction func keyPressedE(_ sender: UIButton)
    {      playSound("E")

        
    }
    @IBAction func keyPressedF(_ sender: UIButton)
    {
        playSound("F")

    }
    @IBAction func keyPressedG(_ sender: UIButton)
    {
        playSound("G")

    }
    @IBAction func keyPressedA(_ sender: UIButton)
    {
        playSound("A")

    }
    @IBAction func keyPressedB(_ sender: UIButton)
    {
        playSound("B")

    }



}

