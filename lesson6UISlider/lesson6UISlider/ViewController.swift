//
//  ViewController.swift
//  lesson6UISlider
//
//  Created by Karen Vardanian on 26.12.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var sliderVolum: UISlider!
    
    var player = AVAudioPlayer()
    var slider: UISlider {
        let slide = UISlider()
        slide.frame = CGRect(x: 0, y: 0, width: 200, height: 23)
        slide.center = view.center
        slide.minimumValue = 0.0
        slide.maximumValue = 100.0
        slide.thumbTintColor = .purple
        slide.tintColor = .cyan
        return slide
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        slider.addTarget(self, action: #selector(changeSlider), for: .valueChanged)
        
        do {
            if let audioPath = Bundle.main.path(forResource: "Abba", ofType: "mp3") {
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                slider.maximumValue = Float(player.duration)
            }
        } catch  {
            print ("Error!")
        }
        
        view.addSubview(slider)
        
    }
    
    @objc func changeSlider(sender: UISlider) {
        if sender == slider {
            player.currentTime = TimeInterval(sender.value)
        }
    }
    
    
    @IBAction func pauseButton(_ sender: UIButton) {
        player.pause()
    }
    @IBAction func playButton(_ sender: Any) {
        player.play()
    }
    
    
    @IBAction func sliderAction(_ sender: Any) {
        player.volume = sliderVolum.value
    }
}

